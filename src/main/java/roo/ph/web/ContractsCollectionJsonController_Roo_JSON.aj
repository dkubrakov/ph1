// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package roo.ph.web;

import io.springlets.data.domain.GlobalSearch;
import java.util.Collection;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.method.annotation.MvcUriComponentsBuilder;
import org.springframework.web.util.UriComponents;
import roo.ph.domain.Contract;
import roo.ph.service.api.ContractService;
import roo.ph.web.ContractsCollectionJsonController;
import roo.ph.web.ContractsItemJsonController;

privileged aspect ContractsCollectionJsonController_Roo_JSON {
    
    declare @type: ContractsCollectionJsonController: @RestController;
    
    declare @type: ContractsCollectionJsonController: @RequestMapping(value = "/contracts", name = "ContractsCollectionJsonController", produces = MediaType.APPLICATION_JSON_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private ContractService ContractsCollectionJsonController.contractService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param contractService
     */
    @Autowired
    public ContractsCollectionJsonController.new(ContractService contractService) {
        this.contractService = contractService;
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return ContractService
     */
    public ContractService ContractsCollectionJsonController.getContractService() {
        return contractService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param contractService
     */
    public void ContractsCollectionJsonController.setContractService(ContractService contractService) {
        this.contractService = contractService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return ResponseEntity
     */
    @GetMapping(name = "list")
    public ResponseEntity<Page<Contract>> ContractsCollectionJsonController.list(GlobalSearch globalSearch, Pageable pageable) {
        
        Page<Contract> contracts = getContractService().findAll(globalSearch, pageable);
        return ResponseEntity.ok(contracts);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return UriComponents
     */
    public static UriComponents ContractsCollectionJsonController.listURI() {
        return MvcUriComponentsBuilder
            .fromMethodCall(
                MvcUriComponentsBuilder.on(ContractsCollectionJsonController.class).list(null, null))
            .build().encode();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param contract
     * @param result
     * @return ResponseEntity
     */
    @PostMapping(name = "create")
    public ResponseEntity<?> ContractsCollectionJsonController.create(@Valid @RequestBody Contract contract, BindingResult result) {
        
        if (contract.getId() != null || contract.getVersion() != null) {        
            return ResponseEntity.status(HttpStatus.CONFLICT).build();
        }
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        Contract newContract = getContractService().save(contract);
        UriComponents showURI = ContractsItemJsonController.showURI(newContract);
        
        return ResponseEntity.created(showURI.toUri()).build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param contracts
     * @param result
     * @return ResponseEntity
     */
    @PostMapping(value = "/batch", name = "createBatch")
    public ResponseEntity<?> ContractsCollectionJsonController.createBatch(@Valid @RequestBody Collection<Contract> contracts, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        getContractService().save(contracts);
        
        return ResponseEntity.created(listURI().toUri()).build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param contracts
     * @param result
     * @return ResponseEntity
     */
    @PutMapping(value = "/batch", name = "updateBatch")
    public ResponseEntity<?> ContractsCollectionJsonController.updateBatch(@Valid @RequestBody Collection<Contract> contracts, BindingResult result) {
        
        if (result.hasErrors()) {
            return ResponseEntity.status(HttpStatus.CONFLICT).body(result);
        }
        
        getContractService().save(contracts);
        
        return ResponseEntity.ok().build();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return ResponseEntity
     */
    @DeleteMapping(value = "/batch/{ids}", name = "deleteBatch")
    public ResponseEntity<?> ContractsCollectionJsonController.deleteBatch(@PathVariable("ids") Collection<Long> ids) {
        
        getContractService().delete(ids);
        
        return ResponseEntity.ok().build();
    }
    
}