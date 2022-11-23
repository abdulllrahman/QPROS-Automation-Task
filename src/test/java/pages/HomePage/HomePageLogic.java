package pages.HomePage;

public class HomePageLogic extends HomePageAbstract {

    public HomePageLogic() {
        super();
    }


    @Override
    public void clickOnElementOnHomePage(String arg0) {
        switch (arg0) {
            case "Open Veterinarians Page":
                clickOnElement(VeterinariansIcon);
                break;
            case "Open Owners Page":
                clickOnElement(OwnersIcon);
                break;
            default:
        }
    }

    @Override
    public Boolean verifyImageOnHomePage() {
        return veirfyImageStatus(HomePageImage);

    }

}
