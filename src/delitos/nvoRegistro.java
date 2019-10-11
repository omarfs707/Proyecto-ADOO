/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package delitos;

import Clases.logoregistro;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JOptionPane;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author Vreker
 */
public class nvoRegistro extends javax.swing.JInternalFrame {

    /**
     * Creates new form nvoRegistro
     */
    public nvoRegistro() {
        initComponents();
        logoregistro.setBorder(new logoregistro());
         txtfecha.setText(fechaActual());
         txtfecha.setEnabled(false); 
        mostrarinfo();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        labeldetencion = new javax.swing.JLabel();
        txtapellido = new javax.swing.JTextField();
        labeldelincuente = new javax.swing.JLabel();
        cmbdelincuente = new javax.swing.JComboBox<>();
        labeldelincuente1 = new javax.swing.JLabel();
        cmbreclusorio = new javax.swing.JComboBox<>();
        labeldelincuente2 = new javax.swing.JLabel();
        cmbdelito = new javax.swing.JComboBox<>();
        labeldelincuente3 = new javax.swing.JLabel();
        cmbcondena = new javax.swing.JComboBox<>();
        fianza = new javax.swing.JLabel();
        txtnombre = new javax.swing.JTextField();
        txtdelito = new javax.swing.JTextField();
        txtcondena = new javax.swing.JTextField();
        txtreclusorio = new javax.swing.JTextField();
        jButton1 = new javax.swing.JButton();
        jPanel1 = new javax.swing.JPanel();
        logoregistro = new javax.swing.JDesktopPane();
        txtdetencion = new javax.swing.JTextField();
        txtfianza = new javax.swing.JTextField();
        txtfecha = new javax.swing.JTextField();

        setClosable(true);
        setIconifiable(true);
        setTitle("Nuevo Registro");

        labeldetencion.setBackground(new java.awt.Color(204, 255, 255));
        labeldetencion.setFont(new java.awt.Font("Arial Black", 0, 18)); // NOI18N
        labeldetencion.setText("Id Detencion");
        labeldetencion.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);

        labeldelincuente.setBackground(new java.awt.Color(204, 255, 255));
        labeldelincuente.setFont(new java.awt.Font("Arial Black", 0, 18)); // NOI18N
        labeldelincuente.setText("Id Delincuente");
        labeldelincuente.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);

        cmbdelincuente.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cmbdelincuenteActionPerformed(evt);
            }
        });

        labeldelincuente1.setBackground(new java.awt.Color(204, 255, 255));
        labeldelincuente1.setFont(new java.awt.Font("Arial Black", 0, 18)); // NOI18N
        labeldelincuente1.setText("Id Reclusorio");
        labeldelincuente1.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);

        cmbreclusorio.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cmbreclusorioActionPerformed(evt);
            }
        });

        labeldelincuente2.setBackground(new java.awt.Color(204, 255, 255));
        labeldelincuente2.setFont(new java.awt.Font("Arial Black", 0, 18)); // NOI18N
        labeldelincuente2.setText("Id Delito");
        labeldelincuente2.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);

        cmbdelito.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cmbdelitoActionPerformed(evt);
            }
        });

        labeldelincuente3.setBackground(new java.awt.Color(204, 255, 255));
        labeldelincuente3.setFont(new java.awt.Font("Arial Black", 0, 18)); // NOI18N
        labeldelincuente3.setText("Id Condena");
        labeldelincuente3.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);

        cmbcondena.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cmbcondenaActionPerformed(evt);
            }
        });

        fianza.setBackground(new java.awt.Color(204, 255, 255));
        fianza.setFont(new java.awt.Font("Arial Black", 0, 18)); // NOI18N
        fianza.setText("Fianza");
        fianza.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);

        txtreclusorio.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtreclusorioActionPerformed(evt);
            }
        });

        jButton1.setBackground(new java.awt.Color(153, 204, 255));
        jButton1.setFont(new java.awt.Font("Algerian", 0, 18)); // NOI18N
        jButton1.setText("Agregar");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout logoregistroLayout = new javax.swing.GroupLayout(logoregistro);
        logoregistro.setLayout(logoregistroLayout);
        logoregistroLayout.setHorizontalGroup(
            logoregistroLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 353, Short.MAX_VALUE)
        );
        logoregistroLayout.setVerticalGroup(
            logoregistroLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 410, Short.MAX_VALUE)
        );

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(logoregistro)
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(logoregistro)
        );

        txtfecha.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtfechaActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(119, 119, 119)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                    .addComponent(cmbreclusorio, javax.swing.GroupLayout.PREFERRED_SIZE, 91, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, layout.createSequentialGroup()
                                        .addComponent(labeldelincuente, javax.swing.GroupLayout.PREFERRED_SIZE, 150, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addGap(18, 18, 18)
                                        .addComponent(cmbdelincuente, javax.swing.GroupLayout.PREFERRED_SIZE, 91, javax.swing.GroupLayout.PREFERRED_SIZE)))
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(txtnombre, javax.swing.GroupLayout.PREFERRED_SIZE, 291, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(txtapellido, javax.swing.GroupLayout.PREFERRED_SIZE, 298, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                .addGroup(layout.createSequentialGroup()
                                    .addGap(300, 300, 300)
                                    .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 298, javax.swing.GroupLayout.PREFERRED_SIZE))
                                .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                                    .addComponent(labeldelincuente1, javax.swing.GroupLayout.PREFERRED_SIZE, 150, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addGap(116, 116, 116)
                                    .addComponent(txtreclusorio, javax.swing.GroupLayout.PREFERRED_SIZE, 531, javax.swing.GroupLayout.PREFERRED_SIZE))
                                .addGroup(layout.createSequentialGroup()
                                    .addComponent(labeldetencion, javax.swing.GroupLayout.PREFERRED_SIZE, 150, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addGap(18, 18, 18)
                                    .addComponent(txtdetencion, javax.swing.GroupLayout.PREFERRED_SIZE, 191, javax.swing.GroupLayout.PREFERRED_SIZE))
                                .addGroup(layout.createSequentialGroup()
                                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                                        .addGroup(layout.createSequentialGroup()
                                            .addComponent(labeldelincuente3, javax.swing.GroupLayout.PREFERRED_SIZE, 150, javax.swing.GroupLayout.PREFERRED_SIZE)
                                            .addGap(18, 18, 18)
                                            .addComponent(cmbcondena, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                                        .addGroup(javax.swing.GroupLayout.Alignment.LEADING, layout.createSequentialGroup()
                                            .addComponent(labeldelincuente2, javax.swing.GroupLayout.PREFERRED_SIZE, 150, javax.swing.GroupLayout.PREFERRED_SIZE)
                                            .addGap(18, 18, 18)
                                            .addComponent(cmbdelito, javax.swing.GroupLayout.PREFERRED_SIZE, 91, javax.swing.GroupLayout.PREFERRED_SIZE)))
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                        .addComponent(txtcondena, javax.swing.GroupLayout.DEFAULT_SIZE, 531, Short.MAX_VALUE)
                                        .addComponent(txtdelito)))
                                .addGroup(layout.createSequentialGroup()
                                    .addComponent(fianza, javax.swing.GroupLayout.PREFERRED_SIZE, 102, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addGap(66, 66, 66)
                                    .addComponent(txtfianza, javax.swing.GroupLayout.PREFERRED_SIZE, 191, javax.swing.GroupLayout.PREFERRED_SIZE)))))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(629, 629, 629)
                        .addComponent(txtfecha, javax.swing.GroupLayout.PREFERRED_SIZE, 283, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addGap(18, 18, 18)
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(48, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(txtfecha, javax.swing.GroupLayout.PREFERRED_SIZE, 32, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(12, 12, 12)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(labeldetencion, javax.swing.GroupLayout.DEFAULT_SIZE, 48, Short.MAX_VALUE)
                    .addComponent(txtdetencion))
                .addGap(24, 24, 24)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(labeldelincuente, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(cmbdelincuente, javax.swing.GroupLayout.PREFERRED_SIZE, 46, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(txtnombre, javax.swing.GroupLayout.PREFERRED_SIZE, 46, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(txtapellido, javax.swing.GroupLayout.PREFERRED_SIZE, 46, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(txtreclusorio)
                    .addComponent(cmbreclusorio)
                    .addComponent(labeldelincuente1, javax.swing.GroupLayout.DEFAULT_SIZE, 48, Short.MAX_VALUE))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(labeldelincuente2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(cmbdelito, javax.swing.GroupLayout.PREFERRED_SIZE, 48, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(labeldelincuente3, javax.swing.GroupLayout.PREFERRED_SIZE, 48, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(cmbcondena, javax.swing.GroupLayout.PREFERRED_SIZE, 48, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(txtcondena, javax.swing.GroupLayout.PREFERRED_SIZE, 50, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(1, 1, 1)
                        .addComponent(txtdelito, javax.swing.GroupLayout.PREFERRED_SIZE, 42, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(fianza, javax.swing.GroupLayout.PREFERRED_SIZE, 48, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(txtfianza, javax.swing.GroupLayout.DEFAULT_SIZE, 48, Short.MAX_VALUE)
                        .addGap(66, 66, 66)
                        .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 69, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(21, 21, 21))))
            .addGroup(layout.createSequentialGroup()
                .addGap(35, 35, 35)
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    
     public static String fechaActual(){
      Date fecha=new Date();
      SimpleDateFormat formatoFecha=new SimpleDateFormat("YYYY/MM/dd");
    
      return formatoFecha.format(fecha);
    }
     
    private void cmbdelincuenteActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cmbdelincuenteActionPerformed

             String valor = (String) cmbdelincuente.getSelectedItem();
        
        
            try{
                ResultSet rs = Conexion.getTabla("SELECT nombre FROM delincuente WHERE iddelincuente = '"+valor+"'");
                ResultSet r = Conexion.getTabla("SELECT apellido FROM delincuente WHERE iddelincuente = '"+valor+"'" );
                
                while(rs.next()&& r.next()){
                    txtnombre.setText(rs.getString(1));
                    txtapellido.setText(r.getString(1));
                }
               
             }catch(Exception e){

            }



            // TODO add your handling code here:
    }//GEN-LAST:event_cmbdelincuenteActionPerformed

    private void txtreclusorioActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtreclusorioActionPerformed

       // TODO add your handling code here:
    }//GEN-LAST:event_txtreclusorioActionPerformed

    private void cmbdelitoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cmbdelitoActionPerformed

          String valor = (String) cmbdelito.getSelectedItem();
        
        
            try{
                ResultSet rs = Conexion.getTabla("SELECT nombre FROM delito WHERE iddelito = '"+valor+"'");
                
                
                while(rs.next()){
                    txtdelito.setText(rs.getString(1));
              
                }
               
             }catch(Exception e){

            }



        // TODO add your handling code here:
    }//GEN-LAST:event_cmbdelitoActionPerformed

    private void cmbcondenaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cmbcondenaActionPerformed

           String valor = (String) cmbcondena.getSelectedItem();
        
        
            try{
                ResultSet rs = Conexion.getTabla("SELECT descripcion FROM condenas WHERE idcondenas = '"+valor+"'");
                
                
                while(rs.next()){
                    txtcondena.setText(rs.getString(1));
              
                }
               
             }catch(Exception e){

            }



        // TODO add your handling code here:
    }//GEN-LAST:event_cmbcondenaActionPerformed

    private void cmbreclusorioActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cmbreclusorioActionPerformed

              String valor = (String) cmbreclusorio.getSelectedItem();
        
        
            try{
                ResultSet rs = Conexion.getTabla("SELECT nombre FROM prision WHERE idreclusorio = '"+valor+"'");
                
                
                while(rs.next()){
                    txtreclusorio.setText(rs.getString(1));
              
                }
               
             }catch(Exception e){

            }




        // TODO add your handling code here:
    }//GEN-LAST:event_cmbreclusorioActionPerformed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed

        Conexion mysql = new Conexion();
        Connection cn = mysql.Conectar();

        String iddetencion,iddelincuente,idreclusorio,iddelito,idcondenas,fianzas,fecha;
        String sSQL = " ";

        iddetencion= txtdetencion.getText();
        iddelincuente= (String) cmbdelincuente.getSelectedItem();
        idreclusorio = (String) cmbreclusorio.getSelectedItem();
        iddelito= (String) cmbdelito.getSelectedItem();
        idcondenas = (String) cmbcondena.getSelectedItem();
        fianzas = txtfianza.getText();
        fecha = txtfecha.getText();
      

        sSQL="INSERT INTO detencion(iddetencion,fecha,delincuente,reclusorio,delito,condena,derechofianza)"+"VALUES(?,?,?,?,?,?,?)";

        try {
            PreparedStatement pst = cn.prepareStatement(sSQL);

            pst.setString(1, iddetencion);
            pst.setString(2, fecha);
            pst.setString(3,iddelincuente);
            pst.setString(4,idreclusorio);
            pst.setString(5, iddelito);
            pst.setString(6, idcondenas);
            pst.setString(7, fianzas);

            int n = pst.executeUpdate();
            if (n > 0) {
                JOptionPane.showMessageDialog(null, "Los datos han sido registrados");
               txtdetencion.setText(" ");
               txtfianza.setText(" ");
            }

        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex);
        }





        // TODO add your handling code here:
    }//GEN-LAST:event_jButton1ActionPerformed

    private void txtfechaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtfechaActionPerformed
          txtfecha.setEnabled(false);         // TODO add your handling code here:
    }//GEN-LAST:event_txtfechaActionPerformed

    public void mostrarinfo(){

              try{
                  
                ResultSet rs = Conexion.getTabla("SELECT iddelincuente FROM delincuente");
               
                
                cmbdelincuente.removeAllItems();
                
                while(rs.next()){
                   cmbdelincuente.addItem(rs.getString(1));
                }
               
             }catch(Exception e){

            }
            
             try{
                  
                ResultSet rs = Conexion.getTabla("SELECT idreclusorio FROM prision");
               
                
                cmbreclusorio.removeAllItems();
                
                while(rs.next()){
                   cmbreclusorio.addItem(rs.getString(1));
                }
               
             }catch(Exception e){

            }
             
              try{
                  
                ResultSet rs = Conexion.getTabla("SELECT iddelito FROM delito");
               
                
                cmbdelito.removeAllItems();
                
                while(rs.next()){
                   cmbdelito.addItem(rs.getString(1));
                }
               
             }catch(Exception e){

            }
              
               try{
                  
                ResultSet rs = Conexion.getTabla("SELECT idcondenas FROM condenas");
               
                
                cmbcondena.removeAllItems();
                
                while(rs.next()){
                   cmbcondena.addItem(rs.getString(1));
                }
               
             }catch(Exception e){

            }
            
        
            
           
    }
    

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JComboBox<String> cmbcondena;
    private javax.swing.JComboBox<String> cmbdelincuente;
    private javax.swing.JComboBox<String> cmbdelito;
    private javax.swing.JComboBox<String> cmbreclusorio;
    private javax.swing.JLabel fianza;
    private javax.swing.JButton jButton1;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JLabel labeldelincuente;
    private javax.swing.JLabel labeldelincuente1;
    private javax.swing.JLabel labeldelincuente2;
    private javax.swing.JLabel labeldelincuente3;
    private javax.swing.JLabel labeldetencion;
    private javax.swing.JDesktopPane logoregistro;
    private javax.swing.JTextField txtapellido;
    private javax.swing.JTextField txtcondena;
    private javax.swing.JTextField txtdelito;
    private javax.swing.JTextField txtdetencion;
    private javax.swing.JTextField txtfecha;
    private javax.swing.JTextField txtfianza;
    private javax.swing.JTextField txtnombre;
    private javax.swing.JTextField txtreclusorio;
    // End of variables declaration//GEN-END:variables
}
