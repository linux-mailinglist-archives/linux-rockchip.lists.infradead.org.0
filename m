Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86162174787
	for <lists+linux-rockchip@lfdr.de>; Sat, 29 Feb 2020 15:56:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CXR0Wp3eTaj+TNTv3wS+rw7lFAdTDmoDarKh3+DJbWg=; b=oclVUzEQ/IE1rj
	jF4SkD52TtdAmrC2wKmK6kZUEYGBS8yfpNMdVuqFB2AmA4+AfttXvQoSHyr2myRGmXrzzdenOj4oe
	yyukULyBW0G57wl9K+BPQvk0KUrmnB7By0AF6cfSX8SyEIfjbgLArXJ+UVV1uH4Yj3C7sECTBM6u9
	WPF7IiJuVAzPoMCX6EmKce/4Ac13R2ZlJuWEwmSIGdA5ToU469xNVRrQiMcNTM1LzoB1Dd7cYMzdI
	slE3Giun2q9ecHqTxWF3mNb+rcU/1BlTn9Z9LUHpUuiRTc9wE4XrUqRY2rnDHk+y/RppdOUqjMYt7
	yC176OIHG97unA/jvaRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j83Xu-00011Q-F6; Sat, 29 Feb 2020 14:56:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j83Xq-00010p-4e
 for linux-rockchip@lists.infradead.org; Sat, 29 Feb 2020 14:56:48 +0000
Received: from p508fcd9d.dip0.t-ipconnect.de ([80.143.205.157]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1j83XX-0003Bd-B4; Sat, 29 Feb 2020 15:56:27 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH v2 2/3] dt-bindings: display: panel: Add binding document
 for Elida KD35T133
Date: Sat, 29 Feb 2020 15:56:26 +0100
Message-ID: <12676917.Ei69fZKULH@phil>
In-Reply-To: <20200229125052.GB5447@ravnborg.org>
References: <20200225093913.415844-1-heiko@sntech.de>
 <20200225093913.415844-2-heiko@sntech.de>
 <20200229125052.GB5447@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_065646_331634_2A57C220 
X-CRM114-Status: GOOD (  19.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, thierry.reding@gmail.com, robin.murphy@arm.com,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Sam,

Am Samstag, 29. Februar 2020, 13:50:52 CET schrieb Sam Ravnborg:
> Hi Heiko.
> 
> On Tue, Feb 25, 2020 at 10:39:12AM +0100, Heiko Stuebner wrote:
> > From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> > 
> > The KD35T133 is a 3.5" 320x480 DSI display used in the RK3326-based
> > Odroid Go Advance handheld device.
> > 
> > Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> One small comment, but anyway:
> 
> Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
> > ---
> >  .../display/panel/elida,kd35t133.yaml         | 49 +++++++++++++++++++
> >  1 file changed, 49 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/display/panel/elida,kd35t133.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/display/panel/elida,kd35t133.yaml b/Documentation/devicetree/bindings/display/panel/elida,kd35t133.yaml
> > new file mode 100644
> > index 000000000000..4bd74eaa61be
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/display/panel/elida,kd35t133.yaml
> > @@ -0,0 +1,49 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/display/panel/elida,kd35t133.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Elida KD35T133 3.5in 320x480 DSI panel
> > +
> > +maintainers:
> > +  - Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> > +
> > +allOf:
> > +  - $ref: panel-common.yaml#
> > +
> > +properties:
> > +  compatible:
> > +    const: elida,kd35t133
> > +  reg: true
> > +  backlight: true
> > +  reset-gpios: true
> > +  iovcc-supply:
> > +     description: regulator that supplies the iovcc voltage
> > +  vdd-supply:
> > +     description: regulator that supplies the vdd voltage
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - backlight
> Is backlight really required? If it is tied to for example vcc then
> there is nothing to express in the DT.

Not sure I follow. On the Odroid Go Advance (device in question)
the backlight is provided by a (adjustable) pwm-backlight.

So of course for probability it is not required by at least to make the
display usable it is ;-)

Heiko

> 
> 	Sam
> 
> > +  - iovcc-supply
> > +  - vdd-supply
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    dsi@ff450000 {
> > +        #address-cells = <1>;
> > +        #size-cells = <0>;
> > +        panel@0 {
> > +            compatible = "elida,kd35t133";
> > +            reg = <0>;
> > +            backlight = <&backlight>;
> > +            iovcc-supply = <&vcc_1v8>;
> > +            vdd-supply = <&vcc3v3_lcd>;
> > +        };
> > +    };
> > +
> > +...
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
