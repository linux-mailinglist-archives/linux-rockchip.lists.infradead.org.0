Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 975AC51BEB
	for <lists+linux-rockchip@lfdr.de>; Mon, 24 Jun 2019 22:03:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E1HLhS5ncBuZjZOvMcJRlfizGfVNFXDsi87PL8K58DI=; b=OJGBf+Y9LCeZOb
	VLQQeiiufeeqr5WTkydrYirqA4GE3ZrbbwLn38o0cO1e/ua4RAGRk3VMwGE9+SWkQjf2sshgCeICQ
	qV5g4JCDaA3WtsCS9285E5fihXCbVFjmVloPp6/M/oBDDdP+53LKW98q5KeOg78+DnTo+YFubCoa2
	VjLQ+VS4O403zWPFIrCA2zIZmzth2HksfRZL6EqgQ5EuUDaqm2UihgXkEOGRymyxlsBwyIXfJzBvW
	xe18XqhlE48HQbOuOG79GA/Qs2qtXWEKlkCHFynvG2YIk+vZ9Dx/rdsTBufwJG6SFIHwpGAOzILPr
	3z8yJzYb7IPOOpZRuynw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfVC0-0003Ij-S4; Mon, 24 Jun 2019 20:03:56 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfVBx-0003I5-AJ
 for linux-rockchip@lists.infradead.org; Mon, 24 Jun 2019 20:03:54 +0000
Received: by mail-io1-xd42.google.com with SMTP id k20so1436057ios.10
 for <linux-rockchip@lists.infradead.org>; Mon, 24 Jun 2019 13:03:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MODC0ogg5YjkQPNkOGskIKtf6/ZXAORt86to46yuFlo=;
 b=mDON5sJTCH+vmc//kOAbSHoxD8EtwXQ6+vuQPeBBhNsMTrLo/I/oEiAaPrFWCRuY6s
 ucBjK3P6JnSVNSVjGZ++u+kSgkjIOYZt2ClKfKnxD5GySnrg+Otjy1+pkblkmRhJR9UM
 OpsEFGn9pSmHlkpUUiqT+l1a9UmKWbf8YDGRk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MODC0ogg5YjkQPNkOGskIKtf6/ZXAORt86to46yuFlo=;
 b=Mokgh8rzlIut6/IeX6aKG6jwozXg5uIiaY1MGRvHdytw6b91AVZkltV0pHMuL7lqA3
 2nfdqg6xs+45eWbD8gEyhjiEZg8xR7buNqchaYS+abMqfeABKU9oZ/kcwnX+TwbQUxei
 gkzBEXDwUL+nlqBUtNaCzTzgnqgdv2CjHPxE+WG0GlwN+EQ02/pt1tXWrYy2U+N1c2yX
 8Wc6TLyal6fbwW/EtcHX6Lgtfehr4plQVOhZ1jeo+YBsIwzv92fgG0DwrrNZvMYDbdBV
 NHbYwVLjOVhpOZeTAW2y0C13faXz+zbwmv6du0i/WFsn/Enxk3bkaWJA821BLAMfVUB0
 TMDA==
X-Gm-Message-State: APjAAAWg+dLo9ku2YNhjo1LJnBlHWb8IJg4PrsZfQr7YyPm1fJrNGas4
 nIknhZKS3t3M2bKX0rUwt8yhAw/g8y4=
X-Google-Smtp-Source: APXvYqxduHbdxLfSyLbhlvuT63oYoYXzJEZXjA2jbR7u0/6C3v4TOkfGn1KNfuKzmqI+XS+RHC7/iA==
X-Received: by 2002:a5e:9401:: with SMTP id q1mr21151300ioj.276.1561406632019; 
 Mon, 24 Jun 2019 13:03:52 -0700 (PDT)
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com.
 [209.85.166.46])
 by smtp.gmail.com with ESMTPSA id d7sm10882158iob.67.2019.06.24.13.03.49
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 13:03:50 -0700 (PDT)
Received: by mail-io1-f46.google.com with SMTP id k20so1435728ios.10
 for <linux-rockchip@lists.infradead.org>; Mon, 24 Jun 2019 13:03:49 -0700 (PDT)
X-Received: by 2002:a02:a48f:: with SMTP id d15mr14797429jam.12.1561406629525; 
 Mon, 24 Jun 2019 13:03:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190621211346.1324-1-ezequiel@collabora.com>
 <20190621211346.1324-4-ezequiel@collabora.com>
In-Reply-To: <20190621211346.1324-4-ezequiel@collabora.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 24 Jun 2019 13:03:37 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UDswMa9X2QxRX9gRnY9=Y2ELMNOZvGZCz4g6fi2c6oEg@mail.gmail.com>
Message-ID: <CAD=FV=UDswMa9X2QxRX9gRnY9=Y2ELMNOZvGZCz4g6fi2c6oEg@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] ARM: dts: rockchip: Add RK3288 VOP gamma LUT
 address
To: Ezequiel Garcia <ezequiel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_130353_358440_663A0EC2 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jacopo Mondi <jacopo@jmondi.org>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Sandy Huang <hjc@rock-chips.com>, dri-devel <dri-devel@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Sean Paul <seanpaul@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 kernel@collabora.com, Ilia Mirkin <imirkin@alum.mit.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Fri, Jun 21, 2019 at 2:14 PM Ezequiel Garcia <ezequiel@collabora.com> wrote:
>
> RK3288 SoC VOPs have optional support Gamma LUT setting,
> which requires specifying the Gamma LUT address in the devicetree.
>
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
> Changes from v1:
> * Drop reg-names, as suggested by Doug.
> ---
>  arch/arm/boot/dts/rk3288.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
