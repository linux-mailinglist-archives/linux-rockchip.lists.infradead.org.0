Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38FB1339E9
	for <lists+linux-rockchip@lfdr.de>; Mon,  3 Jun 2019 23:37:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5h2FAw7qw17/Ur33ai4j+dL0Kh0F/OD9v55kqQuFedw=; b=OVNMRk1j9smkIz
	MCApqlWcTxGyI1hQHDkMEZnycPw0JCe8b76oQ1vMA7ak+0SVEBkwjEeRPX3pE8SqbAYwddrQFBQZG
	AyDFP+O930dp7eo3wtf8sPkE0hr0qnmBJtoL4jeboVSVr9nqcVSWoppmbdGgQc6f+EZOL7MTpsXXL
	dA6qbJmYwARZYwoRcSQHSdhn71egcuw0LZ6LmpmPHBKzjm+7pnj3AO2hBaZkNCSiejrPEDTyAhE2P
	osOojsnTLPGtKVZp2P2Ox15hDdsBXSK6HnXKFHHdxFIyu8I2T0dh/8qP8ztP7fnCN5bFstIs6P/Ky
	9i63DXL7U8oO+d2F+x6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXue4-0001xG-QB; Mon, 03 Jun 2019 21:37:32 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXue1-0001we-Vh
 for linux-rockchip@lists.infradead.org; Mon, 03 Jun 2019 21:37:31 +0000
Received: by mail-vs1-xe41.google.com with SMTP id n21so6463118vsp.12
 for <linux-rockchip@lists.infradead.org>; Mon, 03 Jun 2019 14:37:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=abYS+Uz7A281R7NvC6O8zM/sshSHcswm8DbDdd1frRg=;
 b=YI3bF1wxRrFFyQe1fOOz0HEeP24BXNJUB5WaMcuJQiiEXYicZaZjP+RDPlt4vZZTFG
 eXNqIAopT3I9G6yVvErYwCBjRHaou0mmLJA3k221pf03KQ0A+QkDPr4pbAevxP3HQjos
 ANB17tDD0zu4EM4sRMHhzs02e9QgRsbY7hTmc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=abYS+Uz7A281R7NvC6O8zM/sshSHcswm8DbDdd1frRg=;
 b=V7z+gh08hbWDf6lBp5O6EusThMo0456H20C7i8CGNqpMg9+9sEsgU6Lh2Q41t1sjxN
 ETgdLz/xwCHrj/2wpeoOgtM4TPDDH3al9SqgHDTP92U2OqyutxNvJVJ5QUVqfqsk+D/q
 /wpv5JCFfWlzp9/Eskuv8MYcCKHEuiw22kLfThYfinqNMzaCChuzH3fPh/l61exfxce9
 NtsEyqLM4vK0gZu3Pg4NDUbu24MP2z0Kxmje5shvpQXczfjNnKkajrQQ/eO5G+BOS0Ep
 V8PRcTcPWkNUkVb1JpQm/SzV4shtetHkDX+CWTNNegH5OBkkC/xbtG/y9rq3lDsLS8VT
 iYWw==
X-Gm-Message-State: APjAAAXvr0NtTyP9IhtFQ9C+w+A5latHgRUsRG68JI7CaPLzEJATB4SH
 33BWbjmmvVpCzX/s6RfISHGBNX0eZM4=
X-Google-Smtp-Source: APXvYqz7RyFlsNqsInUL8kNXq6ot3s+vVU4DUCk7lQYcVqX4t6LeDZrDXnjZTqJ2JPTQ1LWAK/DXSw==
X-Received: by 2002:a67:ebcc:: with SMTP id y12mr3044694vso.87.1559597842818; 
 Mon, 03 Jun 2019 14:37:22 -0700 (PDT)
Received: from mail-ua1-f52.google.com (mail-ua1-f52.google.com.
 [209.85.222.52])
 by smtp.gmail.com with ESMTPSA id g17sm5897343vkf.53.2019.06.03.14.37.19
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Jun 2019 14:37:20 -0700 (PDT)
Received: by mail-ua1-f52.google.com with SMTP id n2so7052975uad.8
 for <linux-rockchip@lists.infradead.org>; Mon, 03 Jun 2019 14:37:19 -0700 (PDT)
X-Received: by 2002:ab0:670c:: with SMTP id q12mr13608918uam.106.1559597839129; 
 Mon, 03 Jun 2019 14:37:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190516214022.65220-1-dianders@chromium.org>
In-Reply-To: <20190516214022.65220-1-dianders@chromium.org>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 3 Jun 2019 14:37:07 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Ukt+Y=CNDR2uRLx5JhwyBK36UH4fCaY00a3FoMm-0VCA@mail.gmail.com>
Message-ID: <CAD=FV=Ukt+Y=CNDR2uRLx5JhwyBK36UH4fCaY00a3FoMm-0VCA@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] drm: bridge: dw-hdmi: Add hook for resume
To: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_143730_044313_FAFEFF1D 
X-CRM114-Status: GOOD (  16.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 David Airlie <airlied@linux.ie>, Neil Armstrong <narmstrong@baylibre.com>,
 LKML <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Sandy Huang <hjc@rock-chips.com>,
 Andrzej Hajda <a.hajda@samsung.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>, Sean Paul <seanpaul@chromium.org>,
 Daniel Vetter <daniel@ffwll.ch>, Sam Ravnborg <sam@ravnborg.org>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Laurent,

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
> Let's add a hook to the core dw-hdmi driver so that we can call it in
> dw_hdmi-rockchip in the next commit.
>
> NOTE: the exact set of steps I've done here in resume come from
> looking at the normal dw_hdmi init sequence in upstream Linux plus the
> sequence that we did in downstream Chrome OS 3.14.  Testing show that
> it seems to work, but if an extra step is needed or something here is
> not needed we could improve it.
>
> As part of this change we'll refactor the hardware init bits of
> dw-hdmi to happen all in one function and all at the same time.  Since
> we need to init the interrupt mutes before we request the IRQ, this
> means moving the hardware init earlier in the function, but there
> should be no problems with that.  Also as part of this we now
> unconditionally init the "i2c" parts of dw-hdmi, but again that ought
> to be fine.
>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
>
> Changes in v2:
> - No empty stub for suspend (Laurent)
> - Refactor to use the same code in probe and resume (Laurent)
> - Unconditionally init i2c (seems OK + needed before hdmi->i2c init)
> - Combine "init" of i2c and "setup" of i2c (no reason to split)

Are you happy with this now?  Even if you feel like you don't want to
give it a full Reviewed-by, it'd good if you could confirm that I
handled your suggestions properly.

Thanks!  :-)

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
