/**
 * eGov suite of products aim to improve the internal efficiency,transparency,
   accountability and the service delivery of the government  organizations.

    Copyright (C) <2015>  eGovernments Foundation

    The updated version of eGov suite of products as by eGovernments Foundation
    is available at http://www.egovernments.org

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program. If not, see http://www.gnu.org/licenses/ or
    http://www.gnu.org/licenses/gpl.html .

    In addition to the terms of the GPL license to be adhered to in using this
    program, the following additional terms are to be complied with:

	1) All versions of this program, verbatim or modified must carry this
	   Legal Notice.

	2) Any misrepresentation of the origin of the material is prohibited. It
	   is required that all modified versions of this material be marked in
	   reasonable ways as different from the original version.

	3) This license does not grant any rights to any user of the program
	   with regards to rights under trademark law for use of the trade names
	   or trademarks of eGovernments Foundation.

  In case of any queries, you can reach eGovernments Foundation at contact@egovernments.org.
 */
package org.egov.asset.web.actions.assetcategory;

import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.egov.asset.model.AssetCategory;
import org.egov.web.actions.BaseFormAction;

@Namespace("/assetcategory")
@Results({
    @Result(name=AjaxAssetCategoryAction.PARENT_CATEGORIES,location="/WEB-INF/jsp/assets/assetcategory/ajaxAssetCategory-parentcategories.jsp")  ,
    @Result(name=AjaxAssetCategoryAction.ASSET_CAT_DETAILS,location="/WEB-INF/jsp/assets/assetcategory/ajaxAssetCategory-assetcatdetails.jsp")
  })
public class AjaxAssetCategoryAction extends BaseFormAction {

    /**
     *
     */
    private static final long serialVersionUID = -8703869606104325609L;
    public static final String PARENT_CATEGORIES = "parentcategories";
    public static final String ASSET_CAT_DETAILS = "assetcatdetails";
    private String assetType; // Set by Ajax call
    private Long parentCatId; // Set by Ajax call
    private AssetCategory parentCategory;
    private List<AssetCategory> assetCategoryList;

    @Override
    public Object getModel() {
        return null;
    }

    @Override
    public String execute() {
        return SUCCESS;
    }

    @Action(value = "/ajaxAssetCategory-populateParentCategories")
    public String populateParentCategories() {
        if (assetType.equalsIgnoreCase("-1"))
            assetCategoryList = getPersistenceService().findAllBy("from AssetCategory");
        else
            assetCategoryList = getPersistenceService().findAllBy("from AssetCategory where assetType = ?", assetType);

        return PARENT_CATEGORIES;
    }
    
    @Action(value = "/ajaxAssetCategory-populateParentDetails")
    public String populateParentDetails() {
        parentCategory = (AssetCategory) getPersistenceService().find("from AssetCategory where id=?", parentCatId);
        return ASSET_CAT_DETAILS;
    }

    // Property accessors

    public void setAssetType(final String assetType) {
        this.assetType = assetType;
    }

    public void setParentCatId(final Long parentCatId) {
        this.parentCatId = parentCatId;
    }

    public List<AssetCategory> getAssetCategoryList() {
        return assetCategoryList;
    }

    public AssetCategory getParentCategory() {
        return parentCategory;
    }

}
