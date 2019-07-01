Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 683775C5A3
	for <lists+linux-rockchip@lfdr.de>; Tue,  2 Jul 2019 00:24:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TM72D27F9HCVXN2dv6NnyAJ8wYykaNCbn/51HoDxZhc=; b=D+aTFq5kZCATe+
	0C9cGpYBq0FY+eQf1szzW/hVvUWD/J6c5G9rbVQwgKjh2Gn4CwvXoJbEItehhGi/RD39shDRX1PLi
	gFQYSrOxGFbchQ3S0Ilj8Hm+A7GLUQOcQHjcWSGc9jE3RAigJgWYj0dU5b18pbVTNHMag+RxdCnNZ
	ynDpngoFvqWVO+U4gS+VefHH/GnTN/DB/Zb5xoHBybyyYAvuTi0s9sSJV29n8jmjQy/+8g9DQd66U
	AS4eYQqGNJshE9NQBFhM4jrlD4wVgyXaLijBsayylBTpVZyOdinmKbBTobEypUkFhs7SzFQm5jHIq
	OUJY/JcYtARhh6TpsgtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hi4ig-00024v-Vw; Mon, 01 Jul 2019 22:24:18 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hi4hZ-0001Q0-V0
 for linux-rockchip@lists.infradead.org; Mon, 01 Jul 2019 22:23:11 +0000
Received: by mail-lf1-x144.google.com with SMTP id d11so9888148lfb.4
 for <linux-rockchip@lists.infradead.org>; Mon, 01 Jul 2019 15:23:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Fbe7TmsgKhbmnEw0caEQhgkPX3EuX765bm6NJgTCrNg=;
 b=wDEGwiH167sK/zruCQWkVlavCac1uR/NO9TtBq/Sqoo6WcqseUKWzNqerwLnTFKfWH
 xURZHnwFMVhD1xSzMtyPQKSJTVnZiDnn4ESlNfw2M0X1UtWk0PHmHTvf14WEEK/VmtfU
 NPKfO4h+n/33/UxOVLYShO5bsbld1il1hcjk09ELE6kCKkDUOTTxDUIMin2h3iBfkmvs
 lCMshf8NkuNuixK9LLoufKw1vMyzCvHoQuThd4pQ2QKLN6lkD/a7oUPqOkipARTRwD8V
 +4jAIwBumMso9UTGjBtyZgvK4P13NbOaTI3w5+O8xViOqWJHRZFGY3Oj8XF1ZAgh2Xfr
 aR9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Fbe7TmsgKhbmnEw0caEQhgkPX3EuX765bm6NJgTCrNg=;
 b=TJP1Pl1Qu/Ehav1qSVZQDYmExfV419bE3OyUcxe2uv5fs2Dunk7K1mGezkGjbaT0Cy
 UeJUTK4k2R19VdlmzNtsMdwJnXD0+jDGYnNz9R08R+oEuGB99HCXFzf6uwzZ8Q1v7bTS
 A2HFxOrqg2+UhwFRO4KX1xNIMy+nPcFkniYXtdC67iunZCheeZuJlxPpWT+kd1WohstS
 fxThzOARQ7J2pkGDP2m2pl81EoWcMT0gvb6DVNN07WBKyz0SeFmhuD2HOWy9lO7bUWcb
 0SCr2Y4ZmK0YSXYCLa5/Ue3mmnETYnLRsSbujReX/e7PrV2kIZ/WPpEqUK7YTAwL0gUW
 E3NA==
X-Gm-Message-State: APjAAAXg/Ghp3OJHwb4cA9FfXdbfMkLCatevHR53eAtWrSe23uSyzmzp
 0xBMfkjo0IUS3RjCgijcKZ4ZJw==
X-Google-Smtp-Source: APXvYqxKzVIeKl8FYOyPQIt5SE6DrQDN3rxViA0xrYfu0jOVjbybTl4w+cgE0rVMZjYBZabf7n5TGQ==
X-Received: by 2002:a19:7509:: with SMTP id y9mr1694202lfe.117.1562019788172; 
 Mon, 01 Jul 2019 15:23:08 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id k82sm3461240lje.30.2019.07.01.15.23.06
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 01 Jul 2019 15:23:07 -0700 (PDT)
Date: Mon, 1 Jul 2019 15:15:43 -0700
From: Olof Johansson <olof@lixom.net>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [GIT PULL 1/2] Rockchip dts32 updates for 5.3 round 2
Message-ID: <20190701221543.mpr73ykx6khcgubm@localhost>
References: <1883297.MJ2kjSRBWT@phil>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1883297.MJ2kjSRBWT@phil>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_152310_002624_2F614367 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-rockchip@lists.infradead.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, Jul 01, 2019 at 11:33:34AM +0200, Heiko Stuebner wrote:
> Hi Arnd, Kevin, Olof,
> 
> please find below and in the reply round2 of Rockchip updates for armsoc.
> 
> Please pull!
> 
> Thanks
> Heiko
> 
> The following changes since commit b8925b7c2f867df6ce3e20deb4b3e2b9b32b20ff:
> 
>   ARM: dts: rockchip: Split GPIO keys for veyron into multiple devices (2019-06-06 12:41:04 +0200)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.3-rockchip-dts32-2
> 
> for you to fetch changes up to 519574e3259c8d7e5d78366ef513cfaaf650784f:
> 
>   ARM: dts: rockchip: add display nodes for rk322x (2019-06-27 11:57:20 +0200)

Merged, thanks!


-Olof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
