package pages.VeterinariansPage;

import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebElement;

public class VeterinariansPageLogic extends VeterinariansPageAbstract {

    public VeterinariansPageLogic() {
        super();
    }

    @Override
    public void printAllVeterinarians() {
        PrintTableData(VeterinariansTable);
    }

}
