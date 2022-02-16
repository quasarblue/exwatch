/*
 * Copyright (C) 2022 Fabrizio Candon

 * This file is part of exwatch.
 
 * exwatch is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.

 * exwatch is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.

 * You should have received a copy of the GNU General Public License
 * along with exwatch.  If not, see <https://www.gnu.org/licenses/>.
 */
package exwatch.model;

import java.io.Serializable;
import java.math.BigDecimal;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity // This tells Hibernate to make a table out of this class
@Table(name = "cmc_exchange_checklist")
@Data
public class CmcExchangeChecklist implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	  @GeneratedValue(strategy=GenerationType.AUTO)
	  public Integer id;
      public String name;
	  public Float score;
	  public BigDecimal volume24h;
	  public BigDecimal liquidity;
	  public BigDecimal visitswek;
	  public Boolean xem;
	  public Boolean xym;
	  public String blockers;
	  
      	  
}
