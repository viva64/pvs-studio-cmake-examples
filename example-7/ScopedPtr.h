#pragma once

#include <stdio.h>
#include <assert.h>

template<typename T>
class ScopedPtr {
  public:
    ScopedPtr() : mptr(NULL) {}
    ScopedPtr(T* i) : mptr(i) {}
    virtual ~ScopedPtr() {
      delete mptr;
    }

    void reset(T* i = NULL) {
      assert( i == NULL || i != mptr ); // catch self-reset errors
      ScopedPtr(i).swap(*this);
    }
    void swap(ScopedPtr& io) {
      T* tmp = io.mptr;
      io.mptr = mptr;
      mptr = tmp;
    }
    T& operator*() const {
      assert( mptr != NULL );
      return *mptr;
    }
    T* operator->() const {
      assert( mptr != NULL );
      return mptr;
    }
    T* get() const {
      return mptr;
    }

  // disable copy constructor and assignment operator
  private:
    ScopedPtr(ScopedPtr const& other);
    //ScopedPtr& operator=(ScopedPtr const& other); // pvs warning

  private:
    T* mptr;
};
