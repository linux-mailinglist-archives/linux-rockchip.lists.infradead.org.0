Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43B98138E40
	for <lists+linux-rockchip@lfdr.de>; Mon, 13 Jan 2020 10:52:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FNQtreOUspttr3yp/naSuzwnipMxHlV/qz9STcjHc0Y=; b=bFtot3i++RrHA5
	C/rN2GBmA0RUFepYtzTEkGFCe1VZYOB+ZuTiXZ3KsFzKeCrjbyiJPTOGGZY7Fx+ZDhQPornMUCmBj
	6FxuewDBu/qbVA2c0jxy7x2vHQLwogqt0wAIXz6y7Q5UvQmsFLvR5zdxptN18GDe3xIqQ5ox6jooq
	DP8wSdww4qq+r+MHyPN7iKS0mVCs+yQVShEXxl8hlizgq0pjIWa7aKBs70a66mDSIgQ7Fe7sCUXGI
	e2/x7OajmtuI418TOGctCP9cmz86JXf8s715YKIDPwZo04sYTVzHKIcXeAoNKu9M5HgnAVfCqrG1m
	G2kpsJWaASSu9fluJZ5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqwOm-0005cm-EW; Mon, 13 Jan 2020 09:52:40 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqwOb-0005TR-Ke; Mon, 13 Jan 2020 09:52:30 +0000
Received: from wf0253.dip.tu-dresden.de ([141.76.180.253] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <heiko@sntech.de>)
 id 1iqwOY-00029x-Vk; Mon, 13 Jan 2020 10:52:27 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH] ARM: dts: rockchip: add reg property to brcmf sub node
 for rk3188-bqedison2qc
Date: Mon, 13 Jan 2020 10:52:26 +0100
Message-ID: <2805256.31IRENKq1c@phil>
In-Reply-To: <20200110134420.11280-1-jbx6244@gmail.com>
References: <20200110134420.11280-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_015229_826729_49E88C6C 
X-CRM114-Status: GOOD (  10.92  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Freitag, 10. Januar 2020, 14:44:20 CET schrieb Johan Jonker:
> An experimental test with the command below gives this error:
> rk3188-bqedison2qc.dt.yaml: dwmmc@10218000: wifi@1:
> 'reg' is a required property
> 
> So fix this by adding a reg property to the brcmf sub node.
> Also add #address-cells and #size-cells to prevent more warnings.
> 
> make ARCH=arm dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

applied for 5.6

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
