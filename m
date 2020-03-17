Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3CD61876E1
	for <lists+linux-rockchip@lfdr.de>; Tue, 17 Mar 2020 01:28:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OhkDEHgaYAIVGPcvnlk/v0qo7PRbl2leAmnxBmAB1cM=; b=uHzq5AYD/rU4tF
	OP4RArkDIV7jC7If4Pb2RKLRNdHH8k1tpHHEyk4emqHyQML6vmXmwH8KeQa6U0JQ5lSfTOGpPF+Jf
	xNoJ18DWDemI4gslIDSO/VrZl4GyRl7p2hHm+2fzXNMNw2dS2nMawv+4I8FV7b7hhzp5R5AlTBTAO
	jCXsDSO56rZqAw6UlYQfemmI7BkL+DLw9lmm97fEVXTdD83te8PuU9GQypEGnXHub5KGJZird8Gfh
	63BuoqqLgrWfXhQkJoSfOaPd9BmRuo1KBTPqPXSXpCX0lTdOP/P/u/l0aLFoE5W78hsoc57+rQb/i
	4A/37HWcZb8UZONNMIVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE064-0008QE-6E; Tue, 17 Mar 2020 00:28:40 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE05k-0008BX-U6; Tue, 17 Mar 2020 00:28:24 +0000
Received: from ip5f5a5d2f.dynamic.kabel-deutschland.de ([95.90.93.47]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jE05j-0004PC-3C; Tue, 17 Mar 2020 01:28:19 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH 2/4] ARM: dts: rockchip: remove clock-names property from
 'generic-ohci' nodes
Date: Tue, 17 Mar 2020 01:28:18 +0100
Message-ID: <3829489.fZJU2aXfik@phil>
In-Reply-To: <20200312171441.21144-2-jbx6244@gmail.com>
References: <20200312171441.21144-1-jbx6244@gmail.com>
 <20200312171441.21144-2-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_172821_145706_25C97EFF 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Donnerstag, 12. M=E4rz 2020, 18:14:39 CET schrieb Johan Jonker:
> A test with the command below gives for example this error:
> =

> arch/arm/boot/dts/rv1108-evb.dt.yaml: usb@30160000:
> 'clock-names' does not match any of the regexes: 'pinctrl-[0-9]+'
> =

> 'clock-names' is not a valid property name for usb_host nodes with
> compatible string 'generic-ohci', so remove them.
> =

> make ARCH=3Darm dtbs_check
> DT_SCHEMA_FILES=3DDocumentation/devicetree/bindings/usb/generic-ohci.yaml
> =

> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

applied for 5.7

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
