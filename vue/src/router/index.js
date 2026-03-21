import { createRouter, createWebHistory } from 'vue-router'
import { projectName } from '../../config/config.default'

const routes = [
  //通用路由
  {
    path: '/',
    name: '/',
    component: () => import('../views/Login.vue'),
    meta: {
      title: '登录'
    }
  },
  {
    path: '/login',
    name: 'Login',
    component: () => import('../views/Login.vue'),
    meta: {
      title: '登录'
    }
  },
  {
    path: '/register',
    name: 'Register',
    component: () => import('../views/Register.vue'),
    meta: {
      title: '注册'
    }
  },
  {
    path: '/404',
    name: '404',
    component: () => import('../views/404.vue'),
    meta: {
      title: '404'
    }
  },
  //下面都是前台路由
  {
    path: '/front',
    name: 'Front',
    component: () => import('../views/Front.vue'),
    children: [
      // 前台子路由
      {
        path: 'home',
        name: 'FrontHome',
        component: () => import('../views/front/Home.vue'),
        meta: {
          title: '前台首页'
        }
      },
      {
        path: 'password',
        name: 'FrontPassword',
        component: () => import('../views/front/Password.vue'),
        meta: {
          title: '修改密码'
        }
      },
      {
        path: 'person',
        name: 'FrontPerson',
        component: () => import('../views/front/Person.vue'),
        meta: {
          title: '个人信息'
        }
      },
      {
        path: 'articleDetail',
        name: 'FrontArticleDetail',
        component: () => import('../views/front/ArticleDetail.vue'),
        meta: {
          title: '公告详情'
        }
      },
      {
        path: 'book',
        name: 'FrontBook',
        component: () => import('../views/front/Book.vue'),
        meta: {
          title: '图书大厅'
        }
      },
      {
        path: 'activity',
        name: 'FrontActivity',
        component: () => import('../views/front/Activity.vue'),
        meta: {
          title: '活动中心'
        }
      },
      {
        path: 'bookDetail',
        name: 'FrontBookDetail',
        component: () => import('../views/front/BookDetail.vue'),
        meta: {
          title: '查看详情'
        }
      },
      {
        path: 'myBorrow',
        name: 'FrontMyBorrow',
        component: () => import('../views/front/MyBorrow.vue'),
        meta: {
          title: '我的借阅'
        }
      },
      {
        path: 'myJoin',
        name: 'FrontMyJoin',
        component: () => import('../views/front/MyJoin.vue'),
        meta: {
          title: '我的活动'
        }
      },
      {
        path: 'collect',
        name: 'FrontCollect',
        component: () => import('../views/front/Collect.vue'),
        meta: {
          title: '我的收藏'
        }
      },
      // 前台子路由
    ]
  },
  //下面都是后台路由
  {
    path: '/back',
    name: 'back',
    component: () => import('../views/Back.vue'),
    children: [
      // 后台子路由
      {
        path: 'home',
        name: 'BackHome',
        component: () => import('../views/back/Home.vue'),
        meta: {
          title: '后台首页'
        }
      },
      {
        path: 'password',
        name: 'BackPassword',
        component: () => import('../views/back/Password.vue'),
        meta: {
          title: '修改密码'
        }
      },
      {
        path: 'adminPerson',
        name: 'BackAdminPerson',
        component: () => import('../views/back/AdminPerson.vue'),
        meta: {
          title: '个人信息'
        }
      },
      {
        path: 'user',
        name: 'BackUser',
        component: () => import('../views/back/User.vue'),
        meta: {
          title: '用户管理'
        }
      },
      {
        path: 'admin',
        name: 'BackAdmin',
        component: () => import('../views/back/Admin.vue'),
        meta: {
          title: '管理员管理'
        }
      },
      {
        path: 'comment',
        name: 'BackComment',
        component: () => import('../views/back/Comment.vue'),
        meta: {
          title: '评论管理'
        }
      },
      {
        path: 'banner',
        name: 'BackBanner',
        component: () => import('../views/back/Banner.vue'),
        meta: {
          title: '轮播图管理'
        }
      },
      {
        path: 'collect',
        name: 'BackCollect',
        component: () => import('../views/back/Collect.vue'),
        meta: {
          title: '收藏管理'
        }
      },
      {
        path: 'article',
        name: 'BackArticle',
        component: () => import('../views/back/Article.vue'),
        meta: {
          title: '文章管理'
        }
      },
      {
        path: 'type',
        name: 'BackType',
        component: () => import('../views/back/Type.vue'),
        meta: {
          title: '分类管理'
        }
      },
      {
        path: 'book',
        name: 'BackBook',
        component: () => import('../views/back/Book.vue'),
        meta: {
          title: '图书管理'
        }
      },
      {
        path: 'borrow',
        name: 'BackBorrow',
        component: () => import('../views/back/Borrow.vue'),
        meta: {
          title: '借阅管理'
        }
      },
      {
        path: 'activity',
        name: 'BackActivity',
        component: () => import('../views/back/Activity.vue'),
        meta: {
          title: '活动管理'
        }
      },
      {
        path: 'entry',
        name: 'BackEntry',
        component: () => import('../views/back/Entry.vue'),
        meta: {
          title: '活动参与管理'
        }
      },
      // 后台子路由
    ]
  },
]

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes
})

// 全局前置守卫
router.beforeEach((to, from, next) => {
  const account = JSON.parse(localStorage.getItem("account") || '{}')
  if (to.matched.length === 0) {
    next('/404')
    return
  }
  if (to.path === '/') {
    if (account.role) {
      // 现在是只有角色为管理员才访问后台
      // 如果想设置其他角色登录后也默认访问后台，可以用下面的判断条件
      // account.role === 'ROLE_ADMIN' || account.role === 'ROLE_UNIT'
      if (account.role === 'ROLE_ADMIN') {
        next('/back/home')
      } else {
        next('/front/home')
      }
    } else {
      // 现在是只有登录以后才可以访问首页
      next('/login')
      // 如果想不登录就可以直接访问首页的话，直接用下面的跳转/front/home即可
      // next('/front/home')
    }
  } else {
    next()
  }
})

// 全局后置守卫
router.afterEach((to) => {
  document.title = to.meta.title ? `${to.meta.title} - ${projectName}` : projectName // 设置页面标题
})

export default router
