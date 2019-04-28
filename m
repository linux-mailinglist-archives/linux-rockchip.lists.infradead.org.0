Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 872AFB67E
	for <lists+linux-rockchip@lfdr.de>; Sun, 28 Apr 2019 22:20:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/RJfnU+6Zq5TgKhScVmXtPh9i4/FlmFXKFj07kOwUD0=; b=IM40FxEorFJBwU
	j1B1Mb3UNL38jz12e1SRuGug25KkDCynU4KTNkyQzT/CI5g4bKAZKnviSHNOQCig2Y3AfG60R95uy
	WeWDTEtHWetIfi8T1DjTNaTJ/Gay7Ug3mCTKBkfvDKFXVSeM95IVHJ49hOHpRe7ADWNvQ0sk5d28O
	Vf6kTZKekTI+DSbfp1PcQRzVlm7pCPXYOaQwW7oZYt9VwOavnl/S2lLe+h53Yn35M4bH+OeW8aPRu
	BgDmY71yS0gFKhF1te3ns+QHbE5EFgSrWwsnMSckn6VikAl5l93SE+J0gY7PswWQeLpMWlOpnlO4t
	gM8qea611qRh4L1cNgqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKqHb-0008N8-UQ; Sun, 28 Apr 2019 20:20:20 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKqGW-0007Fr-Qn
 for linux-rockchip@lists.infradead.org; Sun, 28 Apr 2019 20:19:16 +0000
Received: by mail-lf1-x141.google.com with SMTP id t11so6206670lfl.12
 for <linux-rockchip@lists.infradead.org>; Sun, 28 Apr 2019 13:19:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ixFuT1HsOb+d1EBpeUd2Ny5SyJ5pSw+PaR60jPXC8ZQ=;
 b=1yoGABsrFGb0N8EGIr36RYdZcx8AaVb8MGvtg6XkH6K9mbWin0VYqZadycXdmLTeTW
 kKGgSwhEj1TUk620Pd26K2eQXt8tS4/k8P+5eDOf6r5c0pshC8mQwu6+N6GJZ0G8Dj9V
 vepJjZHjEqQxg+7KvfFlXkfiSgu63gPzOE0xsGIKxEQHddiANEvxEu6yDPm+1NJtvx1X
 x8LFjRvM9SmmHza0pv8mBhKNZjlg+sfDKOUcrqz9KC4ZZFauu83a3S5gGUQXhjlGYhyt
 OvPcijwCstL15z+3CQS8Ei2B6V6w2bLbRtYPIHtX1al5TjCEgzv+jYY2d343spD7W4z4
 3yTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ixFuT1HsOb+d1EBpeUd2Ny5SyJ5pSw+PaR60jPXC8ZQ=;
 b=O8f4qzM8V/t+xSguYgkOqXBLHugBCeH/2HbJtJCE4jcCMMBVLKr3S3COlCDNb3qdkv
 jEOL+vbp44J7R8LwXwJgvGI5RDjqpDTuk1rScGMQ+5fOhP9zP0eBksKFyi5pbE/hzeOq
 NMftzgdARpZcppI5lPoFfDYP/M/8MK1fNSg6+wzeXgK3sVief1mLdH/CIdq2RElaidk8
 zQWYyDaz6pGmZangn/Tp2HAaxzc8leRRK4+Xz6ULCqrg6xB/+v5RSssbTG3hTlhxxm9w
 Pi66+qFn+kuCcF3NVc4ZFYDv8CK+peC536u/qUVW38BAh89VR5xYaKNk+hgOOOtUh1wP
 UwuA==
X-Gm-Message-State: APjAAAUeymZcekGofaFsTxysrwEp2vnVY2TZ0nb/W8lPXLToCf/+oUdU
 OohA1k5KkTO6PCkKXv8GoOOkwQ==
X-Google-Smtp-Source: APXvYqyDqdbMfVd21VMP8krAZtZTDwumX6sFiV7PwkbwXdexfotA78zOajw63gPToiC4ABer4LzgnQ==
X-Received: by 2002:a19:f705:: with SMTP id z5mr9645586lfe.93.1556482750796;
 Sun, 28 Apr 2019 13:19:10 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id w19sm7019930lfe.23.2019.04.28.13.19.09
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 13:19:09 -0700 (PDT)
Date: Sun, 28 Apr 2019 12:15:38 -0700
From: Olof Johansson <olof@lixom.net>
To: Heiko Stuebner <heiko@sntech.de>, g@localhost
Subject: Re: [GIT PULL 1/2] Rockchip dts32 updates for 5.2
Message-ID: <20190428191538.jwhfvyth5i3tejsa@localhost>
References: <13182220.1UgD4fsNbT@phil>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <13182220.1UgD4fsNbT@phil>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_131913_194699_ED42A042 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-rockchip@lists.infradead.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, Apr 02, 2019 at 11:05:16AM +0200, Heiko Stuebner wrote:
> Hi Arnd, Kevin Olof,
> 
> please find below and in the reply round1 of Rockchip devicetree updates
> targetted at 5.2. Nothing major, some new boards and a number of
> general updates - Please pull
> 
> Thanks
> Heiko
> 
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.2-rockchip-dts32-1
> 
> for you to fetch changes up to 4b028ebd4e3d86c61161b3a937b746043006dcbe:
> 
>   ARM: dts: rockchip: enable vop0 and hdmi nodes to rk3066a-mk808 (2019-03-31 17:28:05 +0200)
> 
> ----------------------------------------------------------------
> Quite a bit of love for the rk3288-veyron chromeos devices and a number
> of cleanups for rk3288 from that area, hdmi support for the old rk3066
> a small rv1108-eglin-r1 cleanup and wifi+hdmi-cec for the tinker board.

Merged, thanks!


-Olof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
