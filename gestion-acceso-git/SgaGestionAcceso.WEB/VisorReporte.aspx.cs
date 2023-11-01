using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Reporting.WebForms;

namespace SgaGestionAcceso.WEB
{
    public partial class VisorReporte : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                List<ReportParameter> prDE_PARA = new List<ReportParameter>();
                string sPA_GENE = Request.QueryString["sPA_GENE"];

                string sNO_REPO = sPA_GENE.Split(';')[0];
                string sDE_RUTA_SERV = System.Configuration.ConfigurationManager.AppSettings["sDE_RUTA_SERV"];
                string sDE_RUTA_CARP = System.Configuration.ConfigurationManager.AppSettings["sDE_RUTA_CARP"];

                int nNU_ITER = 0;
                string[] oPA_GENE = sPA_GENE.Split(';');

                foreach (string sDE_DATA in oPA_GENE)
                {
                    nNU_ITER = nNU_ITER + 1;
                    if (nNU_ITER > 1)
                    {
                        int tam = sDE_DATA.Length;
                        char aux = sDE_DATA[tam - 1];
                        if (aux == '=')
                        {
                            prDE_PARA.Add(new ReportParameter(sDE_DATA.Split('=')[0], ""));
                        }
                        else
                        {
                            if (sDE_DATA.Split('=')[1] == "null")
                            {
                                prDE_PARA.Add(new ReportParameter(sDE_DATA.Split('=')[0], new string[] { null }));
                            }
                            else
                            {
                                prDE_PARA.Add(new ReportParameter(sDE_DATA.Split('=')[0], sDE_DATA.Split('=')[1]));
                            }
                        }

                    }
                }

                ReportViewer1.ServerReport.ReportServerUrl = new Uri(sDE_RUTA_SERV);
                ReportViewer1.ProcessingMode = Microsoft.Reporting.WebForms.ProcessingMode.Remote;
                ReportViewer1.ServerReport.ReportPath = sDE_RUTA_CARP + sNO_REPO;
                ReportViewer1.ServerReport.SetParameters(prDE_PARA);
                ReportViewer1.ServerReport.Refresh();
            }
        }
    }
}