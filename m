Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 178C4FFC9D
	for <lists+linux-rockchip@lfdr.de>; Mon, 18 Nov 2019 01:58:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nfw7GpBbq2JGRrxWMIPQHRZ2bM8S+qsp7h7RJg4ALb4=; b=lquoJaW3Qw5tg3
	LkiAQ8OruA7FWznhl+dKdzsrRtXzKI2Tc5x6Uqrf+FMdz71nZr99kdLVfkN2oNXIpYzbIKCul/XX7
	3gYJ7xWFfIMw9akxw0xfuqe/DxxsmM63gwFd4yHu/JMgSzag3OStfOn1JxBj0z+C3DvvsaJHLxj32
	t3s+6WotaMvTL3rby154vKrbOurq6SofoqdpBSGTgInEGdJbIV1Hq2/xPtCAtlb0VdwUdh0yzGKNM
	LmTdN2R6DCnf29VV1ibQoCIjrh6Is6I6HidGVg28VPYgSOhAtiRfWVa/vfzRRepePT0bculNNsXqH
	AdEKc3s7RBSVzRcu3Zqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWVNM-0006eJ-O4; Mon, 18 Nov 2019 00:58:44 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWVNJ-0006dV-F1; Mon, 18 Nov 2019 00:58:42 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iWVNF-0003hD-Gj; Mon, 18 Nov 2019 01:58:37 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: remove 408MHz operating point from
 px30
Date: Mon, 18 Nov 2019 01:58:36 +0100
Message-ID: <4318673.vLX1ueDYfg@phil>
In-Reply-To: <20191116095220.31122-1-heiko@sntech.de>
References: <20191116095220.31122-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_165841_650067_9B6BF131 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: kever.yang@rock-chips.com, cl@rock-chips.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Samstag, 16. November 2019, 10:52:20 CET schrieb Heiko Stuebner:
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> It looks like the px30 is running unstable at this 408MHz operating point.
> This shows in stalled threads and other big numbers of kernel exception.
> 
> At 600MHz and above it instead works stable and as expected. As the 408MHz
> point doesn't even decrease the voltage compared to 600MHz, just drop this
> 408MHz operating point for now.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

applied



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
