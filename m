Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D7B71C80B
	for <lists+linux-rockchip@lfdr.de>; Tue, 14 May 2019 13:55:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kbGN/5IFZfenWF3nOMuGkQ4DdIBOQEJavdHRhZgRrrY=; b=FPtpAkb+UXHet3
	sFWhQuGCxJkxwQzJS8JUZtKxM5J2Y7yCinyjEqZ/812DhMgnfypvnLkW8IicNG+cEMT8zicqDeSBi
	eWKwY9hk67ecaOAYZoHaFzEYRin5OJ3xonqtfSDqXE/MH65oopVjQWNc2M0P6bQH5G3VWppQ3GNo1
	jkNNTl3HYFa+RdQwaDwLuDvJEN/nNxhLoAaaNes41FlI234weGso77rTzyNmNfIuUxHVhHZz8jUTE
	5mf+1ZRijap4YM1SdBHL4Y6gYv6YHNkDpS2ecwufa8u5//fJwOWofA8cGTlagEIztmxkTzNhKJAwQ
	7nfGlEKdyI3rZgjPzOhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQW1G-0005EO-Ic; Tue, 14 May 2019 11:54:54 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQW1D-0005Do-0i
 for linux-rockchip@lists.infradead.org; Tue, 14 May 2019 11:54:52 +0000
Received: by mail-qt1-x843.google.com with SMTP id o7so18577791qtp.4
 for <linux-rockchip@lists.infradead.org>; Tue, 14 May 2019 04:54:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VT2D89S828fyqzoHhGVh/qkHOHvPNUor9ixYNhWvom4=;
 b=Qb9yLYechhXXNDKiqTNpeGqdsWjScdOVE+RIgbaE/y/FOG5wgv/RabfDvyXNwpRqtR
 YC1X14va+dtuVFQL8xR7s6CesBTEtCzZ4udK4/QuIqTg8pLdNpsm13cPvTCYFQ9oVR2M
 aZmqEdXBXvcVAUXeWZeBRIrvrPD42tECB3PD825dzFUVQa1cwhU+TulNgNiofCVvuNOK
 gA3fBYLvR7JutzZ0O6WCQmNH8KVEUtONuUuXMuUJhX+KNaL56QQ7xS9s94gCkj1X2Gtn
 AjQ9VjHYnTNlCVCNWKGiAPncNsPspS3HEfwsbR4Ss7bprT1ISeGuRkGU3P35W3YEwiWH
 fYHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VT2D89S828fyqzoHhGVh/qkHOHvPNUor9ixYNhWvom4=;
 b=qWz2t30kTqUvH7HxTQVFlYtnid9vRPiBrWpucoHahgJjHW4bPMM7vzlVhLehA4J33r
 I7nfcPp39dJhJXCW6LgplT3deBXavSmwHcCUFYZl2//qSc7pep76sDHWtMShcQafLYEZ
 mvwXCxM7pHXwBog4lFV3H4vLEYKKmDaLQFFz2pa2jBeI/ZibenxjbTllR5hGkeMksNu4
 eb8/vQlx7jPsRCp+cqdAFSdIkRn/iZa9rT6zbLdzypJlxsVUFdbynk+vnNbamilVZvRK
 AJW2ooes1j+Hs5ouG3kXA+LSqpjOhsf2RVvrmZbXoCp+gN3xwDeP713sFSyFBOCtjF2F
 uohg==
X-Gm-Message-State: APjAAAX/pkkWCFsR2H+2y9DvgK3O3fQKFkl8NksSsC/68t0pUY1GjKw5
 4UKcuKzGPWgGTcxbuciIsKPN9wIJYgDEx9+IJrk=
X-Google-Smtp-Source: APXvYqxRghnZDrgMq7GHbt1vXPBUNuj5GF8HJ3vMC2zK5E2WyV+zxw6JWs3/NHd6qpq9iBBjqvix8YVLFyrg86TYhn8=
X-Received: by 2002:a0c:c165:: with SMTP id i34mr27019508qvh.6.1557834889106; 
 Tue, 14 May 2019 04:54:49 -0700 (PDT)
MIME-Version: 1.0
References: <066a0d38-2c64-7a1e-d176-04341f0cb6d7@gmail.com>
 <20190512023754.GK4889@lunn.ch>
 <ae62419b-53f1-395d-eb0e-66d138d294a8@gmail.com>
 <4c6ef3f1-a2c7-f2da-3f2a-cd28624007f8@gmail.com>
In-Reply-To: <4c6ef3f1-a2c7-f2da-3f2a-cd28624007f8@gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Tue, 14 May 2019 07:53:21 -0400
Message-ID: <CAMdYzYqcg3EXhLguTti2hP-0VVi_vX0XvoDSzTCC84p9aSp7Lg@mail.gmail.com>
Subject: Re: [Regression] "net: phy: realtek: Add rtl8211e rx/tx delays
 config" breaks rk3328-roc-cc networking
To: Heiner Kallweit <hkallweit1@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_045451_060110_3A7C79D1 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pgwipeout[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 Serge Semin <Sergey.Semin@t-platforms.ru>, netdev@vger.kernel.org,
 Serge Semin <fancer.lancer@gmail.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Sun, May 12, 2019 at 3:34 AM Heiner Kallweit <hkallweit1@gmail.com> wrote:
>
> On 12.05.2019 04:50, Peter Geis wrote:
> > On 5/11/2019 10:37 PM, Andrew Lunn wrote:
> >> On Sat, May 11, 2019 at 07:17:08PM -0400, Peter Geis wrote:
> >>> Good Evening,
> >>>
> >>> Commit f81dadbcf7fd067baf184b63c179fc392bdb226e "net: phy: realtek: Add
> >>> rtl8211e rx/tx delays config" breaks networking completely on the
> >>> rk3328-roc-cc.
> >>> Reverting the offending commit solves the problem.
> >>
> >> Hi Peter
> >>
> >> The fix should be in net, and will soon make its way upwards.
> >>
> >>      Andrew
> >>
> >
> >
> > Good Evening,
> >
> > Thanks, is there a link to the patch so I may test it?
> >
> https://git.kernel.org/pub/scm/linux/kernel/git/davem/net.git/commit/?id=daf3ddbe11a2ff74c95bc814df8e5fe3201b4cb5
>
> > Peter
> >
> Heiner

This patch does correct the error message on boot, however networking
is still completely broken.
The current error is as follows:

[  121.829375] kworker/3:1     D    0    67      2 0x00000028
[  121.829398] Workqueue: events linkwatch_event
[  121.829403] Call trace:
[  121.829412]  __switch_to+0xb8/0x1a8
[  121.829420]  __schedule+0x220/0x560
[  121.829423]  schedule+0x38/0xd8
[  121.829429]  schedule_preempt_disabled+0x20/0x38
[  121.829435]  __mutex_lock.isra.1+0x1c4/0x500
[  121.829438]  __mutex_lock_slowpath+0x10/0x18
[  121.829443]  mutex_lock+0x2c/0x38
[  121.829449]  rtnl_lock+0x14/0x20
[  121.829453]  linkwatch_event+0xc/0x38
[  121.829461]  process_one_work+0x1e0/0x320
[  121.829466]  worker_thread+0x40/0x428
[  121.829473]  kthread+0x120/0x128
[  121.829476]  ret_from_fork+0x10/0x18
[  121.829533] INFO: task NetworkManager:1833 blocked for more than 61 seconds.
[  121.830160]       Not tainted
5.1.0-next-20190510test-00009-g3ed182aaa670-dirty #55
[  121.830831] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs"
disables this message.
[  121.831589] NetworkManager  D    0  1833      1 0x00000028
[  121.831601] Call trace:
[  121.831614]  __switch_to+0xb8/0x1a8
[  121.831623]  __schedule+0x220/0x560
[  121.831631]  schedule+0x38/0xd8
[  121.831639]  schedule_preempt_disabled+0x20/0x38
[  121.831647]  __mutex_lock.isra.1+0x1c4/0x500
[  121.831666]  __mutex_lock_slowpath+0x10/0x18
[  121.831671]  mutex_lock+0x2c/0x38
[  121.831687]  mdiobus_write+0x40/0x80
[  121.831698]  rtl8211e_config_init+0x60/0xa0 [realtek]
[  121.831706]  phy_init_hw+0x54/0x70
[  121.831714]  phy_attach_direct+0xd4/0x250
[  121.831720]  phy_connect_direct+0x20/0x70
[  121.831728]  phy_connect+0x54/0xa0
[  121.831741]  stmmac_init_phy+0x17c/0x200
[  121.831748]  stmmac_open+0x124/0xac0
[  121.831759]  __dev_open+0xd8/0x158
[  121.831762]  __dev_change_flags+0x164/0x1c8
[  121.831766]  dev_change_flags+0x20/0x60
[  121.831774]  do_setlink+0x288/0xba8
[  121.831778]  __rtnl_newlink+0x5cc/0x6e8
[  121.831783]  rtnl_newlink+0x48/0x70
[  121.831786]  rtnetlink_rcv_msg+0x120/0x368
[  121.831807]  netlink_rcv_skb+0x58/0x118
[  121.831811]  rtnetlink_rcv+0x14/0x20
[  121.831816]  netlink_unicast+0x180/0x1f8
[  121.831822]  netlink_sendmsg+0x190/0x330
[  121.831837]  sock_sendmsg+0x3c/0x58
[  121.831844]  ___sys_sendmsg+0x268/0x2a0
[  121.831849]  __sys_sendmsg+0x68/0xb8
[  121.831855]  __arm64_sys_sendmsg+0x20/0x28
[  121.831864]  el0_svc_common.constprop.0+0x7c/0xe8
[  121.831870]  el0_svc_handler+0x28/0x78
[  121.831875]  el0_svc+0x8/0xc

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
