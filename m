Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6E8EFC2BE
	for <lists+linux-rockchip@lfdr.de>; Thu, 14 Nov 2019 10:38:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xpu3p9h0aKvvILGrc2cQcZkdKdLJ+yxNb8VCjRps+Zk=; b=A+EsRcpPQWJeYz
	R95g+xy5/MUnFrjn2uxLteYuWsTHgujMCOADogSODELmWIg6jpy8eUmI+v8cuLiv/MT0hr8xIvleP
	NQiruOP4iDDWGnQ+5Opf6fDSfibZbLbrSOG+BLE2TF7RWcIC2trHtmTd5lTglyUCrc0NLuQBWmatb
	K5HGCjvl85itkfsz/DvbmUQ9I2Tr5FM63KpHr8SzOH5lw4YhY++9QdjT87LAikyfRJWfTJQoqNQFK
	abvqW6VTn4M0EeuaLycsM5ajm09KSKYutdKcCrNPtOl1FjW1k8GkjkqiVe+3ELXmuMKtG57EKQseb
	rmBqC9bUkYHKcMpnNs4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVBZg-00080I-Ka; Thu, 14 Nov 2019 09:38:00 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVBZN-0007pW-E2; Thu, 14 Nov 2019 09:37:42 +0000
Received: from wf0530.dip.tu-dresden.de ([141.76.182.18] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iVBZI-0001Ra-Gq; Thu, 14 Nov 2019 10:37:36 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Markus Reichl <m.reichl@fivetechno.de>
Subject: Re: [PATCH] arm64: dts: rockchip: Add regulators for pcie on
 rk3399-roc-pc
Date: Thu, 14 Nov 2019 10:37:35 +0100
Message-ID: <2274710.ikg6cSjed2@phil>
In-Reply-To: <8fa0c3da-b64d-f47f-a9eb-b3456a3fd073@fivetechno.de>
References: <8fa0c3da-b64d-f47f-a9eb-b3456a3fd073@fivetechno.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_013741_619418_68B74FBB 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Markus,

Am Montag, 11. November 2019, 15:21:39 CET schrieb Markus Reichl:
> Add regulators to pcie node from schematics.
> 
> Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>

applied for 5.6 (probably).

"git am", really didn't like your multipart/mime message though
and I had to fix it up to apply. Please check your mail settings.

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
