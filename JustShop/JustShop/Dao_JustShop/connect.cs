using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace JustShop.Dao_JustShop
{
    public class connect
    {
        private JustShop1Entities1 justShop = null;
        public JustShop1Entities1 ketnoi()
        {
            justShop = new JustShop1Entities1();
            return justShop;
        }
    }
}