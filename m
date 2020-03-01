Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B139174A8A
	for <lists+linux-rockchip@lfdr.de>; Sun,  1 Mar 2020 01:42:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z4k8IcAnBY7Ra8b2nlM6t063EtAaNvSll/Kgk6kj1+U=; b=AMnw8MYveBKLA8
	aSNF0Oc0EDjHPjhSTNCfmHca5KrSomTdtIWRXJmj8Q4U++p02izFM5RYp9tTD5+jSMpqcP1wiW67T
	zrX2fhsbe5MPtzIQyPjYcAYNMEK9XMlCHzxw7yNi/fo20VRZwnJYFfbrozWu5wpmTQImRj5VI+Wo+
	sHWAOWC8wldTSsC0NiETpSppQUvKe72ZHpLntJ8m1MtbYzSPIkCsZP+ZnQKKBaUUko8XvsfS2IfqY
	YjpE3W7bAPQ+6TW2PNT8w+GaBvNIyjQ9/aTpZSPR6jAihEPJExOWWlw/9rdfCoglhcN5ICJZ6ftyI
	fYsei33dPN9PJvbNlOcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8Ch2-0002SU-4L; Sun, 01 Mar 2020 00:42:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8Cgn-0002Js-B4; Sun, 01 Mar 2020 00:42:38 +0000
Received: from p508fcd9d.dip0.t-ipconnect.de ([80.143.205.157]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1j8CgT-00052P-9b; Sun, 01 Mar 2020 01:42:17 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Tobias Schramm <t.schramm@manjaro.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: Add doc for pine64 Pinebook Pro
Date: Sun, 01 Mar 2020 01:42:16 +0100
Message-ID: <2852313.2ZqhBMtFLq@phil>
In-Reply-To: <20200229144817.355678-2-t.schramm@manjaro.org>
References: <20200229144817.355678-1-t.schramm@manjaro.org>
 <20200229144817.355678-2-t.schramm@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_164237_532108_54504DE6 
X-CRM114-Status: GOOD (  14.77  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Alexis Ballier <aballier@gentoo.org>,
 Katsuhiro Suzuki <katsuhiro@katsuster.net>, linux-kernel@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>,
 Kever Yang <kever.yang@rock-chips.com>, Markus Reichl <m.reichl@fivetechno.de>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Jagan Teki <jagan@amarulasolutions.com>, Nick Xie <nick@khadas.com>,
 Andy Yan <andy.yan@rock-chips.com>, Johan Jonker <jbx6244@gmail.com>,
 Vasily Khoruzhick <anarsoul@gmail.com>, Matthias Kaehlcke <mka@chromium.org>,
 Vivek Unune <npcomplete13@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Samstag, 29. Februar 2020, 15:48:16 CET schrieb Tobias Schramm:
> This commit adds a compatible for the Pinebook Pro.
> 
> Signed-off-by: Tobias Schramm <t.schramm@manjaro.org>

The old patch from Emmanuel already got an

Reviewed-by: Rob Herring <robh@kernel.org>

and as this is the same binding, this should just be kept :-)

[Mainly for me to remember as well]

Heiko

> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 874b0eaa2a75..482a0cbfb18a 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -402,6 +402,11 @@ properties:
>            - const: phytec,rk3288-phycore-som
>            - const: rockchip,rk3288
>  
> +      - description: Pine64 Pinebook Pro
> +        items:
> +          - const: pine64,pinebook-pro
> +          - const: rockchip,rk3399
> +
>        - description: Pine64 Rock64
>          items:
>            - const: pine64,rock64
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
