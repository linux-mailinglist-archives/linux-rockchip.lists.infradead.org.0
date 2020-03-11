Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0B78181435
	for <lists+linux-rockchip@lfdr.de>; Wed, 11 Mar 2020 10:10:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JX4XcBK/xPKyXsgrBxTQ2jA0gXIn+EU+MOvLFSf9hWg=; b=ded8xhxIqGsG6a
	j6Le7bP3YmMDfamEIC6lPf6jpLRXbpBeZSbToCQrGp6rpBpA2lk1r1eRxZ1sbGSqpozLZ4u96a51T
	sM/o7ULoqf8vSgEQrGo3emVy4IY6igZYPYZQIi74JGa15VdxrLNr6oU/VxDM6V6Q+eKEhvS06Wyau
	k/8RTXArOXn14vNi/MfhOVFSKMqEVA6Jb53p8Q4kg7Wde5EJqqGTEYranijnJSON9ir1gepqPv3VZ
	yxFFEKL0uu2Hrz8kHU3/kW66RJyJ2ex2ejjLaZKmmQROJlX5K2ZYxVm/bFWjpnqxE20OE5oiDXg4W
	KgNNk6+bJTsYStlb7hAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBxOB-00089H-Kc; Wed, 11 Mar 2020 09:10:55 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBxNN-0006fx-8T; Wed, 11 Mar 2020 09:10:06 +0000
Received: from p5b127c69.dip0.t-ipconnect.de ([91.18.124.105]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jBxNL-0000a4-7G; Wed, 11 Mar 2020 10:10:03 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [RFC PATCH] ARM: dts: rockchip: remove #dma-cells from dma client
 nodes for rv1108
Date: Wed, 11 Mar 2020 10:10:02 +0100
Message-ID: <2565398.9qm7F6LNF9@phil>
In-Reply-To: <20200309134020.14935-1-jbx6244@gmail.com>
References: <20200309134020.14935-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_021005_499890_304F19DD 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
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

Am Montag, 9. M=E4rz 2020, 14:40:20 CET schrieb Johan Jonker:
> When we combine spi-rockchip.yaml and
> spi-controller.yaml and add 'additionalProperties: false'
> it gives for example this error:
> =

> arch/arm/boot/dts/rv1108-evb.dt.yaml: spi@10270000:
> '#dma-cells' does not match any of the regexes:
> '^.*@[0-9a-f]+$', '^slave$'
> =

> '#dma-cells' are not used for dma clients, so remove them all.
> =

> make ARCH=3Darm dtbs_check
> DT_SCHEMA_FILES=3DDocumentation/devicetree/bindings/spi/spi-rockchip.yaml
> =

> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

applied for 5.7

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
