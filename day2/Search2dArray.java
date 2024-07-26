public class Search2dArray {
    public static void main(String args[]){
        int[][] a={{1,2},{3,4}};
        int search_element=2;
        int row=0;
        for(int[] i:a){
            row++;
            int column=0;
            for(int j:i){
                column++;
                if(j==search_element){
                    System.out.printf("\nfound at [%d] [%d]",row,column);
                    break;
                }
            }
        }
    }
}
