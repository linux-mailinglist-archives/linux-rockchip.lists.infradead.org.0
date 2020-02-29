Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 850891746EC
	for <lists+linux-rockchip@lfdr.de>; Sat, 29 Feb 2020 13:51:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FWFJLarutKYH3ky/NSh3I2+kB8/IjpgbQwFi3GY0viA=; b=LdgiEy6I5Co45g
	FztzdNU4girvfhp1oHJ1XEKaleNxtrfX/VS4MMfOMmQYv5o+gO4xAt4TQxgJfy7cAIGG9jcS2zJAE
	6pexvCXkC0EIuhCAy5UjRaXbS10Xa64u5st+9HNHLVmIk6YbfvTQJj50Z2mud32sXdvf4nRC2V9A7
	ICgJZPqMPKGMvZfbdkq/VdsVo68QMfDdJn88KTG2vByKnvj4Vj8BJdG+Lng2z31P0KNqFeXB8L5na
	oQMejmeaaQbVJJC+VFe3a6ur9v39rs7uiqjKRem10F9huDT2YZ+gp+RvgYmwhiBIo53viht0FLfcv
	sTybO5I7py9lNTTsVARg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j81a8-0001OG-H3; Sat, 29 Feb 2020 12:51:00 +0000
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j81a3-0001No-Lr
 for linux-rockchip@lists.infradead.org; Sat, 29 Feb 2020 12:50:58 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id CB48020043;
 Sat, 29 Feb 2020 13:50:53 +0100 (CET)
Date: Sat, 29 Feb 2020 13:50:52 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v2 2/3] dt-bindings: display: panel: Add binding document
 for Elida KD35T133
Message-ID: <20200229125052.GB5447@ravnborg.org>
References: <20200225093913.415844-1-heiko@sntech.de>
 <20200225093913.415844-2-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200225093913.415844-2-heiko@sntech.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=eMA9ckh1 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=NXpJzYs8AAAA:8
 a=7gkXJVJtAAAA:8 a=gEfo2CItAAAA:8 a=Plb8VKaFw85NpEceskgA:9
 a=CjuIK1q_8ugA:10 a=cwV61pgf2j4Cq8VD9hE_:22 a=E9Po1WZjFZOl8hwRPBS3:22
 a=sptkURWiP4Gy88Gu7hUp:22 a=pHzHmUro8NiASowvMSCR:22
 a=nt3jZW36AmriUCFCBwmW:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_045055_896078_E310528A 
X-CRM114-Status: GOOD (  15.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.14 listed in list.dnswl.org]
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
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, thierry.reding@gmail.com, robin.murphy@arm.com,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Heiko.

On Tue, Feb 25, 2020 at 10:39:12AM +0100, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> The KD35T133 is a 3.5" 320x480 DSI display used in the RK3326-based
> Odroid Go Advance handheld device.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

One small comment, but anyway:

Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
> ---
>  .../display/panel/elida,kd35t133.yaml         | 49 +++++++++++++++++++
>  1 file changed, 49 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/elida,kd35t133.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/elida,kd35t133.yaml b/Documentation/devicetree/bindings/display/panel/elida,kd35t133.yaml
> new file mode 100644
> index 000000000000..4bd74eaa61be
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/elida,kd35t133.yaml
> @@ -0,0 +1,49 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/panel/elida,kd35t133.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Elida KD35T133 3.5in 320x480 DSI panel
> +
> +maintainers:
> +  - Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> +
> +allOf:
> +  - $ref: panel-common.yaml#
> +
> +properties:
> +  compatible:
> +    const: elida,kd35t133
> +  reg: true
> +  backlight: true
> +  reset-gpios: true
> +  iovcc-supply:
> +     description: regulator that supplies the iovcc voltage
> +  vdd-supply:
> +     description: regulator that supplies the vdd voltage
> +
> +required:
> +  - compatible
> +  - reg
> +  - backlight
Is backlight really required? If it is tied to for example vcc then
there is nothing to express in the DT.

	Sam

> +  - iovcc-supply
> +  - vdd-supply
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    dsi@ff450000 {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +        panel@0 {
> +            compatible = "elida,kd35t133";
> +            reg = <0>;
> +            backlight = <&backlight>;
> +            iovcc-supply = <&vcc_1v8>;
> +            vdd-supply = <&vcc3v3_lcd>;
> +        };
> +    };
> +
> +...
> -- 
> 2.24.1

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
