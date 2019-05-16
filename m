Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 408C4210AB
	for <lists+linux-rockchip@lfdr.de>; Fri, 17 May 2019 00:45:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZDqGY7xTRBtdG3Pi1CkZSUBUTUZwsHhACitkxRShgzE=; b=VIyn7pmwHgHalK
	TGSoi6t14raThpl47lp54ETNnKJ6X/zpKVW8u/hagXNngaKxI5Ktn5Sm//iIRb34jbCjLj03MlhC4
	Zt6c/rYVfU7gBeJ3yDAIyIgi2qFoaKpGXues+52tZHKTcOMFNC8aEMC8fac6zXqf3nfTRsAY0bYSu
	Q/kNfPjRvbNZpE/ZvvhVAGhCOLn7UrONQF6+Vv5QW6L3cQuLCWtl1BSiXdvDojeoyUKfnjkcmEunr
	BK7Ru4/nGFr/UrD1tGDUBJ87cNhQTNwyoXnY5tkFSwI8fcD9FbzjcWTdao073JTBN8jTdUomksc83
	MV7EYNNT9N4bxsb1eSOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRP7i-0006Gq-Cq; Thu, 16 May 2019 22:45:14 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRP7a-0005hb-Ro
 for linux-rockchip@lists.infradead.org; Thu, 16 May 2019 22:45:08 +0000
Received: by mail-vs1-xe41.google.com with SMTP id y6so3420491vsb.0
 for <linux-rockchip@lists.infradead.org>; Thu, 16 May 2019 15:45:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+W9jD9o7YYLYB/v0Ro7pXl+sH8ADQyIbB7T7NXFVEcc=;
 b=iFdbvY1Qgl23eLRHTcbK2KUoW8rVpz0RfgpjJVzvA3c+FlUStxkuV64Wmn8f0D9q+0
 WFM2GPW77EVVaGnoDv7ntLl+FCqJJHHbK/5HI2zpwdwTg2qw1RbSA+tCBCNIKN5g9LuL
 cXJ8bXROlUY7THLAZMkcbiVOe572QpbIYKKjs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+W9jD9o7YYLYB/v0Ro7pXl+sH8ADQyIbB7T7NXFVEcc=;
 b=LNkkqalJbvOOKeiew6oh1oUoIK84WRoxaSdwUSAwKLBvJcl/WueOnJAuRlqjQ2Oaz0
 /2UW7y+wy880exi7x4xfLAo/QnWwAx9QoxKdj1mHg09g0vWogeQTeZWLz+JdFRWTSkMl
 ea8dcTEB2P4c4/+tahiCUtkHcLe9qPi8aUPWewkc6m2ID4vFoigrNl+kfEV4ppJO7s9f
 fJdRVY7jrBJidI99T6OZ6W5YJL5w0rWejEmNdhVZxtPlnXniG4a/KP35ssdZ8BuwmDxK
 kp+h/3b/SqC23Kdc5tyeKIA2CM6IDOhfnPy81NGuZ0KK7H+ky5Rdpa60CVJl9DKdBdCh
 7pcA==
X-Gm-Message-State: APjAAAWnwLah41FjKH/4GlN53tiQsPmC0nwck5dnwK8G50PPHLeaiPUJ
 nz50eEGp1Tpj1etfIcHI1O4Q1ljNp0k=
X-Google-Smtp-Source: APXvYqyANfQh0iCaR6eH4tPTxIRGDZntXjYVmyPuqg2stZgJPzRnBXACdu0AAURTwh6Xvnlb8jdg+g==
X-Received: by 2002:a67:c885:: with SMTP id v5mr26261137vsk.49.1558046705570; 
 Thu, 16 May 2019 15:45:05 -0700 (PDT)
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com.
 [209.85.217.42])
 by smtp.gmail.com with ESMTPSA id t124sm1640468vkf.49.2019.05.16.15.45.03
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 15:45:03 -0700 (PDT)
Received: by mail-vs1-f42.google.com with SMTP id o5so3409292vsq.4
 for <linux-rockchip@lists.infradead.org>; Thu, 16 May 2019 15:45:03 -0700 (PDT)
X-Received: by 2002:a67:b348:: with SMTP id b8mr17879343vsm.144.1558046702869; 
 Thu, 16 May 2019 15:45:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190516214022.65220-1-dianders@chromium.org>
 <20190516214022.65220-2-dianders@chromium.org>
In-Reply-To: <20190516214022.65220-2-dianders@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 16 May 2019 15:44:51 -0700
X-Gmail-Original-Message-ID: <CAD=FV=V3U=5KttaqjUvvF=vpKwFNMd6q0=J1ZKUrJ1b-Stz5bQ@mail.gmail.com>
Message-ID: <CAD=FV=V3U=5KttaqjUvvF=vpKwFNMd6q0=J1ZKUrJ1b-Stz5bQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] drm/rockchip: dw_hdmi: Handle suspend/resume
To: Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>, 
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_154506_899644_83A731DD 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 LKML <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>, Sean Paul <seanpaul@chromium.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Thu, May 16, 2019 at 2:40 PM Douglas Anderson <dianders@chromium.org> wrote:
>
> On Rockchip rk3288-based Chromebooks when you do a suspend/resume
> cycle:
>
> 1. You lose the ability to detect an HDMI device being plugged in.
>
> 2. If you're using the i2c bus built in to dw_hdmi then it stops
> working.
>
> Let's call the core dw-hdmi's suspend/resume functions to restore
> things.
>
> NOTE: in downstream Chrome OS (based on kernel 3.14) we used the
> "late/early" versions of suspend/resume because we found that the VOP
> was sometimes resuming before dw_hdmi and then calling into us before
> we were fully resumed.  For now I have gone back to the normal
> suspend/resume because I can't reproduce the problems.
>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
>
> Changes in v2:
> - Add forgotten static (Laurent)
> - No empty stub for suspend (Laurent)
>
>  drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)

Whoops, forgot that I should have carried forward:

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
