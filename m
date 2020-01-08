Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5468C134A3D
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 Jan 2020 19:09:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uAlXoK1DFK7Tr7Sp4kgWgsji66RnYKUXJl4rtmpg3+A=; b=byOt0CFA2FuFIF
	ZXn1/zmbPmRtoSKfAJ1RjIvRCVWDkdHi3xMjybbls++F7rw3JDsRl4W3pzU0HemSH8nFbPE+QorK2
	rWJlggcLizvWRVyo/fdu6or46lEJzkHdRpMRLmUWQo5UbcL7JAaUxDBdJhfocKnKcPyBLZRE1pavJ
	4jLZnUL7DqIYDISwtf49cZpds1yh8zK/UjGuG3GL8lNoOcwPukACccRVMliDQfo/IPh7TfSaqGw7f
	UgLEbUZqHgGiZtRD0DHT4KM4HlPG8dhiZAUS3tETBTaCXJ3JvxzSWi6GYCkvb6ylHevrJ6a5A4unB
	Od4oFuCx0yT07rSFr+QQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipFlc-0001ut-BE; Wed, 08 Jan 2020 18:09:16 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipFlN-0001ls-S8; Wed, 08 Jan 2020 18:09:05 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jan 2020 10:09:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,410,1571727600"; d="scan'208";a="421521020"
Received: from tfeiten-mobl1.ger.corp.intel.com (HELO kekkonen.fi.intel.com)
 ([10.252.37.105])
 by fmsmga005.fm.intel.com with ESMTP; 08 Jan 2020 10:08:56 -0800
Received: by kekkonen.fi.intel.com (Postfix, from userid 1000)
 id B962521EDA; Wed,  8 Jan 2020 20:08:54 +0200 (EET)
Date: Wed, 8 Jan 2020 20:08:54 +0200
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH v12 08/11] media: staging: dt-bindings: add Rockchip ISP1
 yaml bindings
Message-ID: <20200108180854.GA5438@kekkonen.localdomain>
References: <20191227200116.2612137-1-helen.koike@collabora.com>
 <20191227200116.2612137-9-helen.koike@collabora.com>
 <20200107140115.GQ19828@paasikivi.fi.intel.com>
 <ad9d8ef7-5b52-d27e-ac95-db07dc1d443c@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ad9d8ef7-5b52-d27e-ac95-db07dc1d443c@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_100901_940591_187F04E9 
X-CRM114-Status: GOOD (  19.72  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, eddie.cai.linux@gmail.com,
 kernel@collabora.com, heiko@sntech.de, linux-arm-kernel@lists.infradead.org,
 ezequiel@collabora.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, tfiga@chromium.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org, hans.verkuil@cisco.com,
 laurent.pinchart@ideasonboard.com, joacim.zetterling@gmail.com,
 mchehab@kernel.org, andrey.konovalov@linaro.org, jacob-chen@iotwrt.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, Jan 08, 2020 at 01:50:38PM -0300, Helen Koike wrote:
> Hi,
> 
> Thank you for your review.
> 
> On 1/7/20 12:01 PM, Sakari Ailus wrote:
> > Hi Helen,
> > 
> > On Fri, Dec 27, 2019 at 05:01:13PM -0300, Helen Koike wrote:
> >> Add yaml DT bindings for Rockchip ISP1.
> >>
> >> This was tested and verified with:
> >> mv drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml Documentation/devicetree/bindings/media/
> >> make dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> >> make dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> >>
> >> Signed-off-by: Helen Koike <helen.koike@collabora.com>
> >>
> >> ---
> >>
> >> Changes in v12:
> >> - The commit replaces the following commit in previous series named
> >> media: staging: dt-bindings: Document the Rockchip ISP1 bindings
> >> This new patch adds yaml binding and was verified with
> >> make dtbs_check and make dt_binding_check
> >>
> >> Changes in v11:
> >> - add clock-names values
> >>
> >> Changes in v10:
> >> - unsquash
> >>
> >> Changes in v9:
> >> - squash
> >> - move to staging
> >>
> >> Changes in v8:
> >> - fix title division style
> >>
> >> Changes in v7:
> >> - update document with new design and tested example
> >>
> >>  .../bindings/media/rockchip-isp1.yaml         | 193 ++++++++++++++++++
> >>  1 file changed, 193 insertions(+)
> >>  create mode 100644 drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> >>
> >> diff --git a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> >> new file mode 100644
> >> index 000000000000..4d1b2c67a4cd
> >> --- /dev/null
> >> +++ b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> >> @@ -0,0 +1,193 @@
> >> +# SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> >> +%YAML 1.2
> >> +---
> >> +$id: http://devicetree.org/schemas/media/rockchip-isp1.yaml#
> >> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >> +
> >> +title: Rockchip SoC Image Signal Processing unit v1
> >> +
> >> +maintainers:
> >> +  - Helen Koike <helen.koike@collabora.com>
> >> +
> >> +description: |
> >> +  Rockchip ISP1 is the Camera interface for the Rockchip series of SoCs
> >> +  which contains image processing, scaling, and compression funcitons.
> > 
> > "functions"
> > 
> >> +
> >> +properties:
> >> +  compatible:
> >> +    const: rockchip,rk3399-cif-isp
> >> +
> >> +  reg:
> >> +    maxItems: 1
> >> +
> >> +  interrupts:
> >> +    maxItems: 1
> >> +
> >> +  iommus:
> >> +    maxItems: 1
> >> +
> >> +  power-domains:
> >> +    maxItems: 1
> >> +
> >> +  phys:
> >> +    maxItems: 1
> >> +    description: phandle for the PHY port
> >> +
> >> +  phy-names:
> >> +    const: dphy
> >> +
> >> +  clocks:
> >> +    items:
> >> +      - description: ISP clock
> >> +      - description: ISP aclk clock
> >> +      - description: ISP aclk wrapper clock
> >> +      - description: ISP hclk clock
> >> +      - description: ISP hclk wrapper clock
> >> +
> >> +  clock-names:
> >> +    items:
> >> +      - const: clk_isp
> >> +      - const: aclk_isp
> >> +      - const: aclk_isp_wrap
> >> +      - const: hclk_isp
> >> +      - const: hclk_isp_wrap
> >> +
> >> +  # See ./video-interfaces.txt for details
> >> +  ports:
> >> +    type: object
> >> +    additionalProperties: false
> >> +
> >> +    properties:
> >> +      "#address-cells":
> >> +        const: 1
> >> +
> >> +      "#size-cells":
> >> +        const: 0
> >> +
> >> +      port@0:
> > 
> > If you only have a single port node, you could drop reg as well as @0 on
> > the port node.
> 
> After the discussions, we have a single port for now, but we might have port@1
> for tx1rx1 in the future.

Ack. Please keep it as-is then.

-- 
Sakari Ailus
sakari.ailus@linux.intel.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
