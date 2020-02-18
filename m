Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23CC716354F
	for <lists+linux-rockchip@lfdr.de>; Tue, 18 Feb 2020 22:45:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0rNd5XsJYGUtTbhSzWOGCbPV9NPw2aY3ayEKFEi3TiQ=; b=Erf2KAd/RwUDWcreZfcArmlJ8
	FDq+QwyxyMvexC5AiFISDP8G6p4hT+dUlljUzmijdvXWZzRuGI2Z7yBZkPnnr9bCUjAcTyuJ55p+b
	xgngS4PDC4ZX/Bn/RwTFJOkZo5H9CymNT/NG36dpv2CYlMi2vLzxNjdqLXYSlm9eGgemmO5MDaXx7
	haDUc0QaxY9qLnYJcprBHbO0yQZUtC1gs/JmHjD40D0pbJRLkaCYW6/TnM52PBZKVeuKIGYD7X/Cm
	42y1RnEsyrTLEExFfn41vKj4srN6HUbjLnZQRIhZfYu630h6yeMs3bcpTBbt8v+0Xlb98FqZUdOwv
	PyHF+WerQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Afz-0006gr-T3; Tue, 18 Feb 2020 21:45:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Afw-0006Fi-Cc
 for linux-rockchip@lists.infradead.org; Tue, 18 Feb 2020 21:45:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D583A1FB;
 Tue, 18 Feb 2020 13:45:03 -0800 (PST)
Received: from [192.168.1.123] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 09A043F68F;
 Tue, 18 Feb 2020 13:45:02 -0800 (PST)
Subject: Re: [PATCH v2 0/5] mfd: RK8xx tidyup
From: Robin Murphy <robin.murphy@arm.com>
To: lee.jones@linaro.org
References: <cover.1578789410.git.robin.murphy@arm.com>
Message-ID: <caf2fcfe-696e-9398-7c85-57498107f0ac@arm.com>
Date: Tue, 18 Feb 2020 21:44:55 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <cover.1578789410.git.robin.murphy@arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_134504_485628_D3F69DB6 
X-CRM114-Status: GOOD (  12.07  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, smoch@web.de,
 linux-kernel@vger.kernel.org, heiko@sntech.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 2020-01-12 1:54 am, Robin Murphy wrote:
> Hi all,
> 
> Here's a second crack at my RK805-inspired cleanup. There was a bit
> of debate around v1[1], but it seems like we're now all happy that this
> is a reasonable way to go. For clarity I decided to include Soeren's
> patch as #1/5, but since I've rewritten most of my patches I've not
> included the tested-by tags.

Any more comments, or are these patches good to merge now? My local 
branch seemed to rebase to 5.6-rc1 cleanly, but I can resend if necessary.

Thanks,
Robin.

> 
> [1] https://lore.kernel.org/lkml/cover.1575932654.git.robin.murphy@arm.com/
> 
> Robin Murphy (4):
>    mfd: rk808: Ensure suspend/resume hooks always work
>    mfd: rk808: Stop using syscore ops
>    mfd: rk808: Reduce shutdown duplication
>    mfd: rk808: Convert RK805 to shutdown/suspend hooks
> 
> Soeren Moch (1):
>    mfd: rk808: Always use poweroff when requested
> 
>   drivers/mfd/rk808.c       | 139 +++++++++++++-------------------------
>   include/linux/mfd/rk808.h |   2 -
>   2 files changed, 48 insertions(+), 93 deletions(-)
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
