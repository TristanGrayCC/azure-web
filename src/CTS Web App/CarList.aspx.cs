using System;
using System.Data;
using System.Web.UI.WebControls;
using System.Xml;
namespace CTS_Web_App
{
    public partial class CarList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.BindGrid();
            }
        }
        private void BindGrid()
        {
            DataSet ds = new DataSet();
            ds.ReadXml(Server.MapPath("~/Cars.xml"));
            CarsGridview.DataSource = ds;
            CarsGridview.DataBind();
        }
        protected void BtnInsert_Click(object sender, EventArgs e)
        {
            Insert_XML();
        }
        protected void CarsGridview_RowEditing(object sender, GridViewEditEventArgs e)
        {
            CarsGridview.EditIndex = e.NewEditIndex;
            BindGrid();
        }
        protected void CarsGridview_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            CarsGridview.EditIndex = -1;
            BindGrid();
        }
        protected void CarsGridview_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = CarsGridview.Rows[e.RowIndex].DataItemIndex;
            TextBox Name = CarsGridview.Rows[e.RowIndex].FindControl("TxtEditCarName") as TextBox;
            TextBox Type = CarsGridview.Rows[e.RowIndex].FindControl("TxtEditCarType") as TextBox;
            TextBox Year = CarsGridview.Rows[e.RowIndex].FindControl("TxtEditCarYear") as TextBox;
            CarsGridview.EditIndex = -1;
            BindGrid();
            DataSet ds = CarsGridview.DataSource as DataSet;
            ds.Tables[0].Rows[id]["Name"] = Name.Text;
            ds.Tables[0].Rows[id]["Type"] = Type.Text;
            ds.Tables[0].Rows[id]["Year"] = Year.Text;
            ds.WriteXml(Server.MapPath("~/Cars.xml"));
            BindGrid();
        }
        protected void CarsGridview_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            BindGrid();
            DataSet ds = CarsGridview.DataSource as DataSet;
            ds.Tables[0].Rows[CarsGridview.Rows[e.RowIndex].DataItemIndex].Delete();
            ds.WriteXml(Server.MapPath("~/Cars.xml"));
            BindGrid();
        }
        void Insert_XML()
        {
            TextBox car_Id = CarsGridview.FooterRow.FindControl("TxtCarID") as TextBox;
            TextBox car_Name = CarsGridview.FooterRow.FindControl("TxtCarName") as TextBox;
            TextBox car_Type = CarsGridview.FooterRow.FindControl("TxtCarType") as TextBox;
            TextBox car_Year = CarsGridview.FooterRow.FindControl("TxtCarYear") as TextBox;
            XmlDocument carsDocument = new XmlDocument();
            carsDocument.Load(Server.MapPath("~/Cars.xml"));
            XmlElement ParentElement = carsDocument.CreateElement("Car");
            XmlElement ID = carsDocument.CreateElement("ID");
            ID.InnerText = car_Id.Text;
            XmlElement Name = carsDocument.CreateElement("Name");
            Name.InnerText = car_Name.Text;
            XmlElement Type = carsDocument.CreateElement("Type");
            Type.InnerText = car_Type.Text;
            XmlElement Year = carsDocument.CreateElement("Year");
            Year.InnerText = car_Year.Text;
            ParentElement.AppendChild(ID);
            ParentElement.AppendChild(Name);
            ParentElement.AppendChild(Type);
            ParentElement.AppendChild(Year);
            carsDocument.DocumentElement.AppendChild(ParentElement);
            carsDocument.Save(Server.MapPath("~/Cars.xml"));
            BindGrid();
        }
    }
}