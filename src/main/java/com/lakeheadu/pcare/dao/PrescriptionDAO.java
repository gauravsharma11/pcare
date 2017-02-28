package com.lakeheadu.pcare.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.lakeheadu.pcare.models.Prescription;


@Repository
public interface PrescriptionDAO extends CrudRepository<Prescription, String>{

}
