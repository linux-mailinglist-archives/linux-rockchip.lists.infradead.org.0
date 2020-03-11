Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50046181407
	for <lists+linux-rockchip@lfdr.de>; Wed, 11 Mar 2020 10:08:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ThI6v0b+7i3eVWRLnqAdxsDocHUdmJ9jbVWz96VNqSw=; b=dDg+XaWX1JUOJu
	ZLaunl5gtbIumZWFrAFDU7gsoPJutFTXh6VYYT8wg3bE/PpH8/dr5YCx77xkKkzSfpo+j8l5KdUIX
	C/z+clQdC9Cyc4qiAm8DyYYfEUb3DaPV7htMlpQkj5BL+HD1B8FajPLjjtb8HNjfCQEw7g2UIxvus
	lCz+KQxcxTSgh+e58mNmpLvXJPQTWdH0XOxlTvyWLSOiBk0L/jToZI10EljXevBmdQpIgrbu6yrl0
	6NfpW0qIa87466jej2nE10zmMCnB8UNZP/G6r8UrJsrFtArAa4jFLxBLrDXvp0EBBc2cWqIPKLdx4
	YNKs+ZG7/g6UhKEw2c+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBxLU-0005Au-G4; Wed, 11 Mar 2020 09:08:08 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBxLK-00053Y-R7; Wed, 11 Mar 2020 09:08:00 +0000
Received: from p5b127c69.dip0.t-ipconnect.de ([91.18.124.105]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jBxLH-0000Xw-Dr; Wed, 11 Mar 2020 10:07:55 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v1 1/5] ARM: dts: rockchip: fix vqmmc-supply property name
 for rk3188-bqedison2qc
Date: Wed, 11 Mar 2020 10:07:54 +0100
Message-ID: <37714750.JZCpAI0Cju@phil>
In-Reply-To: <20200307134841.13803-1-jbx6244@gmail.com>
References: <20200307134841.13803-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_020759_032361_90BE7ECC 
X-CRM114-Status: GOOD (  12.35  )
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Samstag, 7. M=E4rz 2020, 14:48:37 CET schrieb Johan Jonker:
> A test with the command below does not detect all errors
> in combination with 'additionalProperties: false' and
> allOf:
>   - $ref: "synopsys-dw-mshc-common.yaml#"
> allOf:
>   - $ref: "mmc-controller.yaml#"
> =

> 'additionalProperties' applies to all properties that are not
> accounted-for by 'properties' or 'patternProperties' in
> the immediate schema.
> =

> First when we combine rockchip-dw-mshc.yaml,
> synopsys-dw-mshc-common.yaml and mmc-controller.yaml it gives
> this error:
> =

> arch/arm/boot/dts/rk3188-bqedison2qc.dt.yaml: mmc@10218000:
> 'vmmcq-supply' does not match any of the regexes:
> '^.*@[0-9]+$',
> '^clk-phase-(legacy|sd-hs|mmc-(hs|hs[24]00|ddr52)|
> uhs-(sdr(12|25|50|104)|ddr50))$',
> 'pinctrl-[0-9]+'
> =

> 'vmmcq-supply' is not a valid property name for mmc nodes.
> Fix this error by renaming it to 'vqmmc-supply'.
> =

> make ARCH=3Darm dtbs_check
> DT_SCHEMA_FILES=3DDocumentation/devicetree/bindings/mmc/rockchip-dw-mshc.=
yaml
> =

> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

applied all 5 for 5.7

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
