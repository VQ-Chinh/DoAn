package Connection;

import java.util.List;

public interface IDB<E,T,K> {
	
	public T add(E e);	
	public T delete (K k);
	public T update (E e);
	public E find(K k);
	public List<E> getAll();
	public T check(E e);
}
