using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace ManuelPerezWebApp.BusinessLogic
{
    public class FileSystemBusinessLogic
    {
        public DataTable GetFileSysytemBySearch(string fileName)
        {
            using(ManuelPerezWebApp.FileSystemDataSetTableAdapters.usp_FileSearchTableAdapter ft = new FileSystemDataSetTableAdapters.usp_FileSearchTableAdapter())
            {
                return ft.GetDataSearch(fileName);
            }
        }
    }
}