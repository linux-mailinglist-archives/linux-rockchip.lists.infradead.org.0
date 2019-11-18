Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32C67100D74
	for <lists+linux-rockchip@lfdr.de>; Mon, 18 Nov 2019 22:12:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gfewbmvK5haxJZTRiSPpfYb9hP5E/xiZsgCYk+B10rc=; b=MxLUUyqTIp4Vq3
	SSHpwwWHKMZN3NAPdX8VXsfbadpoOiuyuWi3FbNW19BjR2SR5wQGc/HCRHRYyVzLOXrP9XtxA8MbA
	EPXmYVIHJ99HXJucfkmRl945GBrI18lisHp+TUXyFNHoFrPixx2ZdVVNZdWkRYAHX9j5oS2Bod8OD
	jQjQgYqGqEi4OfhjumSDsTw+3LhUntWyukvdvR5l2KH+qxeNA0xVQYfi+Pc51G/ZngvVzBeHEryWG
	xYlshYYHGuFi2sNmY3Y6zeRX50EfJ6fkysvDzBrOTacTmMS9qRXnbXKHzKd9t2bPvP+XxXv5nQym/
	/sQNXjSbBeHBc7s3ASNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWoK1-0006wc-VZ; Mon, 18 Nov 2019 21:12:33 +0000
Received: from mail-yw1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWoJw-0006vN-Jj
 for linux-rockchip@lists.infradead.org; Mon, 18 Nov 2019 21:12:32 +0000
Received: by mail-yw1-xc43.google.com with SMTP id y64so6446041ywe.3
 for <linux-rockchip@lists.infradead.org>; Mon, 18 Nov 2019 13:12:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=6upXDhNFo0nrsQ2L0RqECuxOTI7O5ERKPLneAxPvz7c=;
 b=APsvoPZqd3/4J1mskST0MM0sGTrFWZWLOEAYmOBonP6JvkuEWs9/P/zm2cGhbbAdwR
 RkAdbYictFRA3Lu3MV/9wWkWd1qXzUczVbmHVDRUz+00GgtdZE7BiOlTfhG84lRwIefh
 Bh11q6gC0MXkEVYaXXLbnjc0VOj2d1M3CZ4CETazCX5Pkfx61+yLw9lBNVZbrKCkVoLo
 3NeFEg3x0ez3aQDopQg9loBZHPmttmgYJwKZWeAEx7JGFnDxjUDo+BY2+ywBXULp5Eg7
 FeLIm35E200T3dXB4+wltq1sUd9Fi7m8gcFM/H5GR9jFvoQFVPEyIMQIM8hXoJmDYF+9
 BIHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6upXDhNFo0nrsQ2L0RqECuxOTI7O5ERKPLneAxPvz7c=;
 b=kes+Ub2X3RjfSejW79IwfCZNb0UKB+DRquKJwF/jEHWbbt6i3dGQ6otPcRFxhHnXpS
 BaRFaPM0gWxp9s+pql1bIsOc+DuVvze7JdVlfaPVDwiFveWGpUza4s9NstAOg8ZKMWui
 SXeOiPEDjKhdKV/c5OtylKWwqvglCW8iFpzK8QVQ+fni2WN1ql9wRoz20DGTs1L+AUn/
 6Sj6hOpIJhXYTeGV3em3N68y7u2JynQj0rAY//wFdFb3U/Kv68tVdSBrR9XqPfX9QbBf
 gaG3FB5xRsnzHgXhPMryv48RngYsOBGB+j5Z3I/ahCX6zG2DUaovjoSct0l8NNzjXJDq
 vgww==
X-Gm-Message-State: APjAAAX7YbHCJis/nKFChLLzZwr/weKZUym0KykmB6BpPTwoaW7PNbiC
 AQFISin/2k6t/qX43xc5f4itGA==
X-Google-Smtp-Source: APXvYqzAinz5ZQxnMdmq3uJvhm1X1FgntGJvMLmBXoROvfsqoAMA3ftORkYq9KGMR2pOobqbP/cByQ==
X-Received: by 2002:a81:4e04:: with SMTP id c4mr9481605ywb.298.1574111544976; 
 Mon, 18 Nov 2019 13:12:24 -0800 (PST)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id n191sm8487846ywd.56.2019.11.18.13.12.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 13:12:24 -0800 (PST)
Date: Mon, 18 Nov 2019 16:12:23 -0500
From: Sean Paul <sean@poorly.run>
To: Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [PATCH 0/2] add new DRM_DEV_WARN macro
Message-ID: <20191118211223.GB135013@art_vandelay>
References: <20191114132436.7232-1-wambui.karugax@gmail.com>
 <8736ep1hm2.fsf@intel.com> <20191118192450.GA135013@art_vandelay>
 <CAKMK7uG7Tb6oocrRgRFvq5oB2Rxjy+JmyOSXQtjo6Gt_WH91+A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKMK7uG7Tb6oocrRgRFvq5oB2Rxjy+JmyOSXQtjo6Gt_WH91+A@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_131228_789003_07C7D0C4 
X-CRM114-Status: GOOD (  19.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Dave Airlie <airlied@linux.ie>, dri-devel <dri-devel@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sandy Huang <hjc@rock-chips.com>, Maxime Ripard <mripard@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Jani Nikula <jani.nikula@linux.intel.com>, Sean Paul <sean@poorly.run>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, Nov 18, 2019 at 09:03:20PM +0100, Daniel Vetter wrote:
> On Mon, Nov 18, 2019 at 8:24 PM Sean Paul <sean@poorly.run> wrote:
> > On Fri, Nov 15, 2019 at 01:52:53PM +0200, Jani Nikula wrote:
> > > On Thu, 14 Nov 2019, Wambui Karuga <wambui.karugax@gmail.com> wrote:
> > > > This adds a new DRM_DEV_WARN helper macro for warnings log output that include
> > > > device pointers. It also includes the use of the DRM_DEV_WARN macro in
> > > > drm/rockchip to replace dev_warn.
> > >
> > > I'm trying to solicit new struct drm_device based logging macros, and
> > > starting to convert to those. [1]
> > >
> >
> > This sounds good to me, I'd much prefer the non-caps versions of these
> > functions. So let's wait for those to bubble up and then convert rockchip to
> > drm_dev_*
> 
> Care to ack Jani's patch directly, so this is all formal?

I just time traveled to last week and acked the whole series :)

Sean

> 
> Jani, can you pls also add a todo.rst patch on top to adjust the
> relevant item to the new color choice?
> 
> Wambui, I guess slight change of plans, it happens ...
> 
> Cheers, Daniel
> 
> >
> > Sean
> >
> > > BR,
> > > Jani.
> > >
> > >
> > > [1] http://patchwork.freedesktop.org/patch/msgid/63d1e72b99e9c13ee5b1b362a653ff9c21e19124.1572258936.git.jani.nikula@intel.com
> > >
> > >
> > >
> > >
> > > >
> > > > Wambui Karuga (2):
> > > >   drm/print: add DRM_DEV_WARN macro
> > > >   drm/rockchip: use DRM_DEV_WARN macro in debug output
> > > >
> > > >  drivers/gpu/drm/rockchip/inno_hdmi.c | 3 ++-
> > > >  include/drm/drm_print.h              | 9 +++++++++
> > > >  2 files changed, 11 insertions(+), 1 deletion(-)
> > >
> > > --
> > > Jani Nikula, Intel Open Source Graphics Center
> >
> > --
> > Sean Paul, Software Engineer, Google / Chromium OS
> 
> 
> 
> -- 
> Daniel Vetter
> Software Engineer, Intel Corporation
> +41 (0) 79 365 57 48 - http://blog.ffwll.ch

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
