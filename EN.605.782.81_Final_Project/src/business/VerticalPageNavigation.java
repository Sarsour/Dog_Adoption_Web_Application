package business;

import java.util.List;

public class VerticalPageNavigation {

	private List<String> navOptions;
	private String page;
	
	public VerticalPageNavigation(List<String> navOptions, String page) {
		super();
		this.navOptions = navOptions;
		this.page = page;
	}

	public List<String> getNavOptions() {
		return navOptions;
	}

	public void setNavOptions(List<String> navOptions) {
		this.navOptions = navOptions;
	}

	public String getPage() {
		return page;
	}

	public void setPage(String page) {
		this.page = page;
	}
	
}
