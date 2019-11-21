Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EB2C104C90
	for <lists+linux-rockchip@lfdr.de>; Thu, 21 Nov 2019 08:29:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References:In-Reply-To:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lA64Ll4SawE0bU7WR9GLky+SwDmBIHP4uSW2vaLtqgI=; b=aYfk1Y8KF/r1yhlgrCuK3d8uQ
	S3eDHtY7p3zmSUccdMJE5v3N++NeQQRZfwaPTRaCqa9ATKwkY2T6N7pQPehdfFW8S5rd3/MxA6sxd
	k/dZSxxyNpd8ZJGMCCEKL/murIxII7atEzkd72aI9k54Ke9rqojIcyuHo/HqFt4p8u35LOKXGAdwY
	FbKfQNjfcNL+MvLhJZ+EHpevRR1ow/6pjSbBboqXxqU0BzDmdRjPzfN3SaniqsA2dlfukc39Blcme
	OVXa/QzgibIFfRxdDuPDen4fRr+1V9pv/wn4vTvTTyu+Ua0amUIoLOD/cAmTvOFK2zguHEkDCljV1
	UJ3/3ICaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXguF-0002C7-EI; Thu, 21 Nov 2019 07:29:35 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXgtw-00020L-Bh; Thu, 21 Nov 2019 07:29:18 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id DD3A028DB43
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: Neil Armstrong <narmstrong@baylibre.com>, Adrian Ratiu
 <adrian.ratiu@collabora.com>, linux-arm-kernel@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 4/4] dt-bindings: display: add IMX MIPI DSI host
 controller doc
In-Reply-To: <e19aca1f-842d-a5b4-6fc1-02f7f6dd136d@baylibre.com>
References: <20191118152518.3374263-1-adrian.ratiu@collabora.com>
 <20191118152518.3374263-5-adrian.ratiu@collabora.com>
 <e19aca1f-842d-a5b4-6fc1-02f7f6dd136d@baylibre.com>
Date: Thu, 21 Nov 2019 09:29:39 +0200
Message-ID: <87a78p7km4.fsf@iwork.i-did-not-set--mail-host-address--so-tickle-me>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_232916_663437_0EDA0480 
X-CRM114-Status: GOOD (  12.40  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Martyn Welch <martyn.welch@collabora.com>,
 Sjoerd Simons <sjoerd.simons@collabora.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-imx@nxp.com, kernel@collabora.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, 20 Nov 2019, Neil Armstrong <narmstrong@baylibre.com> 
wrote:
> Hi, 
> 
> On 18/11/2019 16:25, Adrian Ratiu wrote: 
> 
> A small commit log would be welcome here. 
> 
>> Signed-off-by: Sjoerd Simons <sjoerd.simons@collabora.com> 
>> Signed-off-by: Martyn Welch <martyn.welch@collabora.com> 
>> Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com> --- 
>>  .../bindings/display/imx/mipi-dsi.txt         | 56 
>>  +++++++++++++++++++ 1 file changed, 56 insertions(+) create 
>>  mode 100644 
>>  Documentation/devicetree/bindings/display/imx/mipi-dsi.txt 
>>  diff --git 
>> a/Documentation/devicetree/bindings/display/imx/mipi-dsi.txt 
>> b/Documentation/devicetree/bindings/display/imx/mipi-dsi.txt 
>> new file mode 100644 index 000000000000..3f05c32ef963 --- 
>> /dev/null +++ 
>> b/Documentation/devicetree/bindings/display/imx/mipi-dsi.txt 
> 
> New bindings should use the yaml dt-schema format, could you 
> convert it ?

Yes, I will convert to yaml and add a commit log in the next 
version.

Will leave the current patches a little more on review to give 
others a chance to see them.

Thank you!

>
> Neil
>
>> @@ -0,0 +1,56 @@
>> +Freescale i.MX6 DW MIPI DSI Host Controller
>> +===========================================
>> +
>> +The DSI host controller is a Synopsys DesignWare MIPI DSI v1.01 IP
>> +with a companion PHY IP.
>> +
>> +These DT bindings follow the Synopsys DW MIPI DSI bindings defined in
>> +Documentation/devicetree/bindings/display/bridge/dw_mipi_dsi.txt with
>> +the following device-specific properties.
>> +
>> +Required properties:
>> +
>> +- #address-cells: Should be <1>.
>> +- #size-cells: Should be <0>.
>> +- compatible: "fsl,imx6q-mipi-dsi", "snps,dw-mipi-dsi".
>> +- reg: See dw_mipi_dsi.txt.
>> +- interrupts: The controller's CPU interrupt.
>> +- clocks, clock-names: Phandles to the controller's pll reference
>> +  clock(ref) and APB clock(pclk), as described in [1].
>> +- ports: a port node with endpoint definitions as defined in [2].
>> +- gpr: Should be <&gpr>.
>> +       Phandle to the iomuxc-gpr region containing the multiplexer
>> +       control register.
>> +
>> +[1] Documentation/devicetree/bindings/clock/clock-bindings.txt
>> +[2] Documentation/devicetree/bindings/media/video-interfaces.txt
>> +
>> +Example:
>> +
>> +	mipi_dsi: mipi@21e0000 {
>> +		#address-cells = <1>;
>> +		#size-cells = <0>;
>> +		compatible = "fsl,imx6q-mipi-dsi", "snps,dw-mipi-dsi";
>> +		reg = <0x021e0000 0x4000>;
>> +		interrupts = <0 102 IRQ_TYPE_LEVEL_HIGH>;
>> +		gpr = <&gpr>;
>> +		clocks = <&clks IMX6QDL_CLK_MIPI_CORE_CFG>,
>> +			 <&clks IMX6QDL_CLK_MIPI_IPG>;
>> +		clock-names = "ref", "pclk";
>> +		status = "okay";
>> +
>> +		ports {
>> +			port@0 {
>> +				reg = <0>;
>> +				mipi_mux_0: endpoint {
>> +					remote-endpoint = <&ipu1_di0_mipi>;
>> +				};
>> +			};
>> +			port@1 {
>> +				reg = <1>;
>> +				mipi_mux_1: endpoint {
>> +					remote-endpoint = <&ipu1_di1_mipi>;
>> +				};
>> +			};
>> +		};
>> +        };
>> 
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
