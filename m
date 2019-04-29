Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BE4EE916
	for <lists+linux-rockchip@lfdr.de>; Mon, 29 Apr 2019 19:31:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=te7qsLHgVTcBE88q7D4XGRm+iZ8FOOce3lTI4TuWiCU=; b=nFPxFkVGiXj8Km
	UpygIsbtteqdOpJFFr1jTKNjBDNvUYHyUMN5lOW3Vasn8cSfn8YCvjEUaMzW0nI6QvNBQKtl1DYu0
	2Gs++6TulTjZFmglnT3gZuxP5nRfBzF9PVYJY6M7PIpe4npSPELAqs0zjCL7K6r5fjD658Q/oJWcg
	padzo/q0B+/xDjlsXCqsAu3aKekElU1QuqfJbOjgu6hK63SR0Nt6u1qDJueceQKbTGVpsVCzacAZk
	AD1QKfdcoW3z1fpCYfE/rj6Dq4qbOE1AwkyBcuomIHC9usP93IcvymJZTdDJILVXEgXknhJEP6GP+
	/hYYS5NSw5ys9euj1cxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLA7h-0001Wu-FK; Mon, 29 Apr 2019 17:31:25 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLA7K-00017k-4a
 for linux-rockchip@bombadil.infradead.org; Mon, 29 Apr 2019 17:31:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QejXsB3OpdlM5+EAoMeXmfcyX8s/pStU8O6CJTM6QI4=; b=2Cs5UGBPhdyi84+gQeAMWyOL2
 s/bI6Njm+yx74dYq4mMwiic0l4rYRod2HVaM6Iq96dbjpnGIUulAUNhBsy7GpwNpyldZ7LJdEtP4f
 cmZnQrnu1BzzVSplXCe3pT2G7nlKp5runBCqnM0g/ItmkPmLS42Ks1UWgLw+mgVLIaW0jKPmrplIK
 y1LJvug3+F0UOjSPFI7rk+yPwSYz/3O9fkwoWAz6krNEybBltBe3wsWX0pAaUIgnIsV7VqedlNQDJ
 8OrDFllrtE+vm45d7LE9qc3B+7U/DpGlryRyd14eX3l6OL8SG6xONByhyIcM3WEpwEOeVzRum/qS7
 G2OzK17QA==;
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL9lQ-0001TN-KS
 for linux-rockchip@lists.infradead.org; Mon, 29 Apr 2019 17:08:25 +0000
Received: by mail-lf1-x143.google.com with SMTP id k18so8437633lfj.13
 for <linux-rockchip@lists.infradead.org>; Mon, 29 Apr 2019 10:08:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=QejXsB3OpdlM5+EAoMeXmfcyX8s/pStU8O6CJTM6QI4=;
 b=s1XyFM7kyEwQquPHfVSgIEMOWA0as3+wH5hv8HjWmIoDXz8LKRgBwwZx5aWB5I0qNJ
 SlLSSHj6P6KSpomhR56f034oBlle+WEZOZ812jT52b/s9V/xn/Xlxq9zSX1DVYN8Wyby
 UzEmf8ZfJHJIe+VTSojaKVT8xkjtaUMX7KKHln+it70jvCqsiQZPBLRpMqzBj3VXO62y
 1Rhgbr1pbnQRgiSklQTQi3DP1XxQXsC6nDy1Wi7Dmp9PZqqARtnQRnxtdPd3nxhVUnQ/
 /scJ8o0dOOLy948Wy+bUfWpRTsQV40kWeLgTjb3NvJnHtdsY7toC65tPDSe7XSBF5fJ6
 6UlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=QejXsB3OpdlM5+EAoMeXmfcyX8s/pStU8O6CJTM6QI4=;
 b=MdUo1ijOhW/tvEcbRK9gUFZ/53bVKkegtDsrwLBBtkkZwvglzhb3a4aJ/ir1tf2mXn
 nuiGLP43zORa2NfRUJ3nqQqHk7XI7/AQv1lX0ivl1xFTben9VrelBt/1ULRVe16PeMCl
 3InIZLK+/YgPDE81EL2bjV8osbpirzOVWwM+eqlehx1RyBfpiPubtVoctBUZCXlcOmOD
 7+KZG6J3xPIAQoL/qS0P2VMsgSYrd8FZO36YxPQWN/9KqtEo5zrTUEyULKEBiJUOKyKC
 PKi7rPlr6923Q+HZ7jX+gC2lb5771HGp3OpbVzUPxuLiv5zSyjgjhns/WmLVqe/Y/Kfz
 ATQQ==
X-Gm-Message-State: APjAAAU/gdBBlcaDevGd8vfjZ76BEpsOoPEmIF4XGt4Gyti+ctYXtzHm
 6hhvb9IHayNN+oj7tmMSd8JbaA==
X-Google-Smtp-Source: APXvYqxap6GI99Zesmk+YqvGST2YvWZHO+CEpUfcGKmaQ0eu1IiN1ndNYGrloEwMQmHH4yliSNTLpw==
X-Received: by 2002:ac2:43d8:: with SMTP id u24mr32873699lfl.94.1556557699512; 
 Mon, 29 Apr 2019 10:08:19 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id q12sm7390269lfa.37.2019.04.29.10.08.18
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 10:08:18 -0700 (PDT)
Date: Mon, 29 Apr 2019 09:56:51 -0700
From: Olof Johansson <olof@lixom.net>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [GIT PULL 4/5] Rockchip soc32 updates for 5.2
Message-ID: <20190429165651.r6ox3tbombvvu2mv@localhost>
References: <3379363.gjmLGbHmEH@phil>
 <4142453.kQgcn4UVYa@phil>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4142453.kQgcn4UVYa@phil>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_130824_741066_5AD629E5 
X-CRM114-Status: GOOD (  14.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
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

On Wed, Apr 24, 2019 at 07:59:18PM +0200, Heiko Stuebner wrote:
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.2-rockchip-soc32-1
> 
> for you to fetch changes up to fbd7af041586a15f5dc15b9ec051d25aa5ebe00a:
> 
>   ARM: rockchip: add missing of_node_put in rockchip_smp_prepare_pmu (2019-04-23 19:52:37 +0200)
> 
> ----------------------------------------------------------------
> Missing of_node_put and some added __init contants.
> 
> ----------------------------------------------------------------
> Douglas Anderson (1):
>       ARM: rockchip: Mark pm-init functions __init
> 
> Wen Yang (1):
>       ARM: rockchip: add missing of_node_put in rockchip_smp_prepare_pmu
> 
>  arch/arm/mach-rockchip/platsmp.c | 1 +
>  arch/arm/mach-rockchip/pm.c      | 4 ++--
>  2 files changed, 3 insertions(+), 2 deletions(-)

Merged, thanks!


-Olof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
