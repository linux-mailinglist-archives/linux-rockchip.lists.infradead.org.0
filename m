Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58736138DB1
	for <lists+linux-rockchip@lfdr.de>; Mon, 13 Jan 2020 10:24:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=65MMOYqp7blpDkwFYdv0OY6g8yOBV9UKOsLn9Gdh3k8=; b=i5oBMxniJzAPt6
	glRoL6btAxoGPZueB9/I9Dgn8rch+ArOWX+hRnBrvSKVf0JMMeksv1jyCRsKWUSRqYs3F3Ndyt6V0
	pO2ScLi9NuUqoWOSJE4GXxq0id1fIsUXtufNLZanvTHMEphF0zvUbnziJ7aKxlz5DXu8XsXGGMCoC
	kEoT8ru5L0vTCB+OF8V2FXTq6mgRtWpys8lecGPQak/gMIvQbk7hcjPwo1/6frhwsW8dkEx9MU+WJ
	bGC/8LZuXSjv6HSebV24qAa6MPv15/Zye87D8L1c48o1zmt9gj3mkoQFyib0oWFQvTZdqqXUVRM5s
	Ip89x171pyA27zCVR1Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqvxJ-0006Z6-CP; Mon, 13 Jan 2020 09:24:17 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqvx6-0006Ps-MI; Mon, 13 Jan 2020 09:24:05 +0000
Received: from wf0253.dip.tu-dresden.de ([141.76.180.253] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <heiko@sntech.de>)
 id 1iqvx3-0001zw-Vv; Mon, 13 Jan 2020 10:24:02 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: add reg property to brcmf sub node
Date: Mon, 13 Jan 2020 10:24:01 +0100
Message-ID: <1821445.7jhtsCTu8y@phil>
In-Reply-To: <20200110142128.13522-1-jbx6244@gmail.com>
References: <20200110142128.13522-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_012404_875530_A487465E 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Freitag, 10. Januar 2020, 15:21:28 CET schrieb Johan Jonker:
> An experimental test with the command below gives this error:
> rk3399-firefly.dt.yaml: dwmmc@fe310000: wifi@1:
> 'reg' is a required property
> rk3399-orangepi.dt.yaml: dwmmc@fe310000: wifi@1:
> 'reg' is a required property
> rk3399-khadas-edge.dt.yaml: dwmmc@fe310000: wifi@1:
> 'reg' is a required property
> rk3399-khadas-edge-captain.dt.yaml: dwmmc@fe310000: wifi@1:
> 'reg' is a required property
> rk3399-khadas-edge-v.dt.yaml: dwmmc@fe310000: wifi@1:
> 'reg' is a required property
> So fix this by adding a reg property to the brcmf sub node.
> Also add #address-cells and #size-cells to prevent more warnings.
> 
> make ARCH=arm64 dtbs_check
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
