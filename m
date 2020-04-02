Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1D1A19C48A
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 Apr 2020 16:43:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m+L4NivJR4APR/fawkzNiQwoN1x/y7JUddmgtkEr+wg=; b=fcWwZgnW4VMSIC
	5+gVDxtgJCYbtFySRTIec6z3PAAFQpwYmeLLT1LKUJq4WUBwwKIaV3tpEqLxhaQwqBeJZ/2hRsJWd
	zqdYf0BX5uIbLlXFt51VbmvqwarUhmg2opAWEKiYfpQFZ5Pyu1xCD3i4SxDkC6sWIhW8inO0bVIco
	JpLfq09L7V1y5pWPMKtHFmhixLwMDtXN9VcBOjZobaNM0Os98gWqt1soySITHBaF3ersu6vKqmn+n
	kSR3tKGU/u5ChCmGMTyAWNegSNzlNmS6+lYFJN9nmB3ZmOCVt/y3CXEXd9YRxVzKfM6j8uZKehFdV
	renWPgg4GcSVK5fcv5mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK13o-0007o5-SZ; Thu, 02 Apr 2020 14:43:12 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK13l-0007ej-1R
 for linux-rockchip@lists.infradead.org; Thu, 02 Apr 2020 14:43:10 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id AB09328CF7C
Subject: Re: [PATCH 1/4] dt-bindings: phy: phy-rockchip-dphy-rx0: move
 rockchip dphy rx0 bindings out of staging
To: Johan Jonker <jbx6244@gmail.com>
References: <20200402000234.226466-2-helen.koike@collabora.com>
 <bfefe00c-5673-ddcb-4e2a-425eb4771002@gmail.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <9ed2142a-bd22-fbb6-cd65-7d727751400e@collabora.com>
Date: Thu, 2 Apr 2020 11:42:57 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <bfefe00c-5673-ddcb-4e2a-425eb4771002@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_074309_234790_819A0835 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 dafna.hirschfeld@collabora.com, heiko@sntech.de, karthik.poduval@gmail.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, hverkuil-cisco@xs4all.nl, mark.rutland@arm.com,
 kernel@collabora.com, ezequiel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Johan,

On 4/2/20 9:16 AM, Johan Jonker wrote:
> Hi Helen,
> 
>> # SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>> %YAML 1.2
>> ---
>> $id: http://devicetree.org/schemas/phy/rockchip-mipi-dphy-rx0.yaml#
>> $schema: http://devicetree.org/meta-schemas/core.yaml#
>>
>> title: Rockchip SoC MIPI RX0 D-PHY Device Tree Bindings
>>
>> maintainers:
>>   - Helen Koike <helen.koike@collabora.com>
>>   - Ezequiel Garcia <ezequiel@collabora.com>
>>
>> description: |
>>   The Rockchip SoC has a MIPI D-PHY bus with an RX0 entry which connects to
>>   the ISP1 (Image Signal Processing unit v1.0) for CSI cameras.
>>
>> properties:
>>   compatible:
>>     const: rockchip,rk3399-mipi-dphy-rx0
>>
> 
>>   reg:
>>     maxItems: 1
> 
> If 'reg' is not used => remove it.

ok, I'll add a patch removing it.

Thanks,
Helen

> 
>>
>>   clocks:
>>     items:
>>       - description: MIPI D-PHY ref clock
>>       - description: MIPI D-PHY RX0 cfg clock
>>       - description: Video in/out general register file clock
>>
>>   clock-names:
>>     items:
>>       - const: dphy-ref
>>       - const: dphy-cfg
>>       - const: grf
>>
>>   '#phy-cells':
>>     const: 0
>>
>>   power-domains:
>>     description: Video in/out power domain.
>>     maxItems: 1
>>
>> required:
>>   - compatible
>>   - clocks
>>   - clock-names
>>   - '#phy-cells'
>>   - power-domains
>>
>> additionalProperties: false
>>
>> examples:
>>   - |
>>
>>     /*
>>      * MIPI D-PHY RX0 use registers in "general register files", it
>>      * should be a child of the GRF.
>>      *
>>      * grf: syscon@ff770000 {
>>      *  compatible = "rockchip,rk3399-grf", "syscon", "simple-mfd";
>>      *  ...
>>      * };
>>      */
>>
>>     #include <dt-bindings/clock/rk3399-cru.h>
>>     #include <dt-bindings/power/rk3399-power.h>
>>
>>     mipi_dphy_rx0: mipi-dphy-rx0 {
>>         compatible = "rockchip,rk3399-mipi-dphy-rx0";
>>         clocks = <&cru SCLK_MIPIDPHY_REF>,
>>                  <&cru SCLK_DPHY_RX0_CFG>,
>>                  <&cru PCLK_VIO_GRF>;
>>         clock-names = "dphy-ref", "dphy-cfg", "grf";
>>         power-domains = <&power RK3399_PD_VIO>;
>>         #phy-cells = <0>;
>>     };

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
