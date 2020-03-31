Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D134198BFE
	for <lists+linux-rockchip@lfdr.de>; Tue, 31 Mar 2020 07:59:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uno6DdRXw920PBemEWzXeceGQU9+KQHJfkjEOZJ4xLM=; b=g8EuALLfqQD2He
	qs9HDKQoMoZ4qFpzLCKPpIDH2DcuMskhvDPfTefIpkOfIRfkm9kPEdZTDOXP+zq7baVS9ta5oHun9
	wEmdcmqxF96SBTOd6jfmbXhR0O1DrCsulKqvBlakpmYQit3CZ5I79Jg3X++msfxMVbHjAH3STUQGr
	S2HepX6K3ahEGVGGUghAWQxH9iuMpvV4zFuW+IxnvD3dr/4l5ZrWhd1VkjXA6gHr3PvF3YXIRLp4m
	eSwa5d6VxFRyMClVOCZM/XcaOCSCaj6gY43pq1G468KKzrAvbxnLRtyEVlSuRDTq3O96+vkyBf4o7
	770bso7t3e+LYzpYn7sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ9w5-0004Sq-Cs; Tue, 31 Mar 2020 05:59:41 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ9w1-0004SC-Ft
 for linux-rockchip@lists.infradead.org; Tue, 31 Mar 2020 05:59:39 +0000
Received: by mail-io1-xd42.google.com with SMTP id q128so20413979iof.9
 for <linux-rockchip@lists.infradead.org>; Mon, 30 Mar 2020 22:59:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JprfLNjDOeA1PhZYuuladmRddk52/jFtx8mvtHpjenA=;
 b=mZH0gxGPljWeAaW8TLiPZBdBWEhHTYxaj75YDyOInU7XAICesi0gl7jNo8VksPb6Ar
 ZvrK+hPFWSW3Uds6qixd6VzurqC9QYc5r4xRwuABUfR+ETOpzSNzVf5Rt2/2Z0lq0hjq
 VWX8zpKNO7+al15lqkXQQo44DOVZhsmKFOrqs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JprfLNjDOeA1PhZYuuladmRddk52/jFtx8mvtHpjenA=;
 b=eglU0Ns34nkHL59vX0eQ39GoiI3run230baiFdsXTh4nW3kzAiFYfE48zrLo2YmbdV
 xgnV5Xq6CYKz8dtBOpiVbN+xFjDWNode3EIiH4qccSV9EvlzSAM2V4Ifmiw9Pb0hdV7r
 K5IVD8V34hGilgL4GKDwREYnQSwQ9J+xg9V6+YN63WZentHduI/dJjJUYj11u/TNGr6S
 xFzoBUV8TXd0qdMe1s3VmcF6o4/yRrdV8jKJchyVNP7ueiUJ+Q7X1NITbmY8+FwUcd78
 HEM+IP+hY8RdLICpFeVwbZ4qaZryNwGOVVuu+cKr3FKH+BwEy6VIpvSseqvq/1yZzjlH
 FcSw==
X-Gm-Message-State: ANhLgQ3KsU7UD43E5//0kMiBGZwGFcVLJQhguTxlES69hir9tmv6yhSn
 RvBwZ4DfAqBUxe1/GANa6LxwHVEhMCLC+9nEJ8GLhQ==
X-Google-Smtp-Source: ADFU+vtKdAIWjgXHuq4P9a83zgX+assncRfzlafxkbyH/xtWpVaI6qrKG/Tt+LociGzJNvMs6PkJANCkBglzsGcTd5k=
X-Received: by 2002:a6b:c901:: with SMTP id z1mr14168702iof.151.1585634374619; 
 Mon, 30 Mar 2020 22:59:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200330181613.29462-1-jagan@amarulasolutions.com>
 <20200330181613.29462-2-jagan@amarulasolutions.com>
 <016151d6786a0ea4@bloch.sibelius.xs4all.nl>
In-Reply-To: <016151d6786a0ea4@bloch.sibelius.xs4all.nl>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Tue, 31 Mar 2020 11:29:23 +0530
Message-ID: <CAMty3ZCHTk5H60cNmUhfq=pNwBJ9Kc1KuGGb=gQFCp2SS3_1gw@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] arm64: dts: rk3399-u-boot: Delete vop
 assigned-clocks/rates
To: Mark Kettenis <mark.kettenis@xs4all.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_225938_155020_38353BD6 
X-CRM114-Status: GOOD (  15.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Simon Glass <sjg@chromium.org>, Kever Yang <kever.yang@rock-chips.com>,
 U-Boot-Denx <u-boot@lists.denx.de>, Suniel Mahesh <sunil@amarulasolutions.com>,
 Anatolij Gustschin <agust@denx.de>,
 linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, Mar 31, 2020 at 1:06 AM Mark Kettenis <mark.kettenis@xs4all.nl> wrote:
>
> > From: Jagan Teki <jagan@amarulasolutions.com>
> > Cc: sunil@amarulasolutions.com, u-boot@lists.denx.de,
> >         linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
> >         Jagan Teki <jagan@amarulasolutions.com>
> > Date: Mon, 30 Mar 2020 23:46:10 +0530
> > Content-Type: text/plain; charset=UTF-8
> >
> > Linux supporting assigned-clocks for VOP on rk3399 by assuming
> > U-Boot not initializing it on this linux commit:
> >
> > commit <617f4472bdd3> ("arm64: dts: rockchip: init rk3399 vop clock rates")
> >
> > There is no specific need to initialize these assigned clock
> > in U-Boot as video drivers still work with default aclk and
> > hclk values. So, these clocks are simply not supported by rk3399
> > clock driver.
> >
> > But, during stdio probe of vidconsole, the device probe
> > will try to check whether the assigned clocks on that video
> > console node is initialized or not? and return error if not.
> >
> > So, delete these property via -u-boot dtsi as there is
> > no specific need in U-Boot.
>
> Deleting these properties isn't very helpful as it means the U-Boot
> device tree can no longer be used by the kernel.  Isn't it a better
> idea to implement these clocks as stubs in the u-boot clock driver?

I did try this before sorting out these changes, seems like it
requires a bit more tweaking the clock wrt display code. I really
didn't see any use case as of now for just to print u-boot log on
display out, and more over this support has been broken since from
releases. so bypassing these nodes can be a solutions for now.

Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
