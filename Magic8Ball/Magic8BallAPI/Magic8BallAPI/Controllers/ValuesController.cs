using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace Magic8BallAPI.Controllers
{
    [Route("api/[controller]")]
    public class ValuesController : Controller
    {
        // GET api/values
        [HttpGet]
        public string Get()
        {
            var config = new AppSettings();
            var fileName = config.GetSetting("answersFile");
            var instance = Magic8Ball.Magic8Ball.Instance(fileName);

            return instance.GetAnswer();
        }

    }
}
