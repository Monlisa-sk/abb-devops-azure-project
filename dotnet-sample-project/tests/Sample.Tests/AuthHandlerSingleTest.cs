using System.Threading.Tasks;
using Architecture.Application;
using Architecture.Domain;
using Architecture.Database;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Localization;
using Moq;
using Xunit;
using DotNetCore.Results;
using DotNetCore.Security;
using static System.Net.HttpStatusCode;
using System.Net;


public class AuthHandlerSingleTest
{
    [Fact]
    public async Task HandleAsync_ReturnsUnauthorized_WhenUserNotFound()
    {
        // Arrange
        var configurationMock = new Mock<IConfiguration>();
        var authRepositoryMock = new Mock<IAuthRepository>();
        var hashServiceMock = new Mock<IHashService>();
        var stringLocalizerMock = new Mock<IStringLocalizer>();

        configurationMock.Setup(c => c["SigningKey"]).Returns("test_signing_key_1234567890123456");
        authRepositoryMock.Setup(r => r.GetByLoginAsync(It.IsAny<string>())).ReturnsAsync((Auth)null);
        stringLocalizerMock.Setup(l => l[It.IsAny<string>()]).Returns(new LocalizedString("Unauthorized", "Unauthorized"));

        var handler = new AuthHandler(
            configurationMock.Object,
            authRepositoryMock.Object,
            hashServiceMock.Object,
            stringLocalizerMock.Object
        );
        var request = new AuthRequest("user", "pass");

        // Act
        var result = await handler.HandleAsync(request);

        // Assert
        Assert.Equal(HttpStatusCode.Unauthorized, result.Status);
        Assert.Null(result.Value);
    }

}
