using System.IO;
using Microsoft.Extensions.Configuration;

namespace Magic8BallAPI
{
    public class AppSettings
    {
        public IConfiguration Configuration { get; set; }

        public AppSettings()
        {
            var builder = new ConfigurationBuilder().SetBasePath(Directory.GetCurrentDirectory())
                .AddJsonFile("appsettings.json");

            Configuration = builder.Build();
        }

        public string GetSetting(string name)
        {
            return Configuration[name];
        }
    }
}
