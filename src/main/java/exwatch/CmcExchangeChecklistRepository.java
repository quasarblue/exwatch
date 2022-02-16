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
package exwatch;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;

import exwatch.model.CmcExchangeChecklist;



// This will be AUTO IMPLEMENTED by Spring into a Bean called userRepository
// CRUD refers Create, Read, Update, Delete

public interface CmcExchangeChecklistRepository extends PagingAndSortingRepository<CmcExchangeChecklist, Integer> {
	
	@Query(value = "SELECT e from CmcExchangeChecklist e order by e.name asc")
    List<CmcExchangeChecklist> findAllNomeAsc(); 
}
