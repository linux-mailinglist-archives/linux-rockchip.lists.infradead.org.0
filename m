Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB1EA15D498
	for <lists+linux-rockchip@lfdr.de>; Fri, 14 Feb 2020 10:20:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SFZO9o7+KKIk92RoxsH2E62qzOWzGJleR7/w/3UYaMY=; b=J4L5rc0B44tIIA
	auZZLep6/voSIXjoJ+0KfJL2JNQxE4hQ6iCXd10oScGE1eLpjQNtQQrXIKOGxIHX0NB/+jP/l61zV
	x/k57z8DZp2ef4IqrG2dhcYCWiUhc75frqzw+a86Oo4JLkOToaAoJedc2O3x2uKAYhp+nxMlJM0b0
	FyOuHwL2stoknsdZhn1MEeKkdh6kppuITrOjolB6PKWy99VfyydVEIAnK8NVR4gnm8VMyF+f7/eN7
	n3+qMYe+K0JJzNZ8Vfu4n3/OsFMOrMwJEAFNg9inRqhYc/nVx3KydNte0QDd9G3ZTv2ExIZgtVu1T
	4zAmBiCyksNtTXxvJZtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2X9I-0004kv-Iq; Fri, 14 Feb 2020 09:20:36 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2X9F-0004kC-3X
 for linux-rockchip@lists.infradead.org; Fri, 14 Feb 2020 09:20:35 +0000
Received: from p5b127dd9.dip0.t-ipconnect.de ([91.18.125.217]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1j2X8x-0000h0-3A; Fri, 14 Feb 2020 10:20:15 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: [PATCH v2 1/6] dt-bindings: add binding for Rockchip combo phy
 using an Innosilicon IP
Date: Fri, 14 Feb 2020 10:20:14 +0100
Message-ID: <17396429.PKOFnNSWWW@phil>
In-Reply-To: <1581574091-240890-2-git-send-email-shawn.lin@rock-chips.com>
References: <1581574091-240890-1-git-send-email-shawn.lin@rock-chips.com>
 <1581574091-240890-2-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_012033_297292_C356490A 
X-CRM114-Status: GOOD (  12.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Simon Xue <xxm@rock-chips.com>, linux-rockchip@lists.infradead.org,
 Jingoo Han <jingoohan1@gmail.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 William Wu <william.wu@rock-chips.com>, Rob Herring <robh+dt@kernel.org>,
 linux-pci@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Shawn,

Am Donnerstag, 13. Februar 2020, 07:08:06 CET schrieb Shawn Lin:
> This IP could supports USB3.0 and PCIe.
> 
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> 
> ---
> 
> Changes in v2:
> - fix yaml format
> 
>  .../bindings/phy/rockchip,inno-combophy.yaml       | 80 ++++++++++++++++++++++

can we make this rockchip,inno-usb3pciephy or something similar please?
Same for the driver name.

-combophy is completely non-descriptive and looking at the Rockchip
vendor-tree we already have:

- phy-rockchip-inno-combphy.c (this one)
- phy-rockchip-inno-mipi-dphy.c (rk1808 dsi, but should actually fit into combo)
- phy-rockchip-inno-video-combo-phy.c (dsi/lvds/ttl)
- phy-rockchip-inno-video-phy.c (rk3288-lvds)

All of them have quite none-descriptive names

The inno-video-combo-phy already got a somewhat nicer name in
mainline (dsidphy), so I think it would be cool to also do this here
(and for the driver of course).


> +  reset-names:
> +    items:
> +      - const: otg-rst
> +      - const: combphy-por
> +      - const: combphy-apb
> +      - const: combphy-pipe

reset-names are local to the node, so there is no need
for combophy prefixes, so these should probably be:

      - const: otg-rst
      - const: por
      - const: apb
      - const: pipe


> +
> +  rockchip,combphygrf:
> +    enum:
> +      - rockchip,combphygrf

nicer name here? :-)


Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
