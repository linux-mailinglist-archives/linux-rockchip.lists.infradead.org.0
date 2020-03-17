Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B24E187715
	for <lists+linux-rockchip@lfdr.de>; Tue, 17 Mar 2020 01:52:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b0Xhi8C2g1bKkggcMS+5+HsJ7RJ6BQOKbav51CNbNiY=; b=CKPwFsYW7B5QTL
	qvG+FF1TTiuqS9JBjOnnVopGliQvVwzdJxdznq8a+9NlYTRMF13YRqIpaGxOeDBSk1z6qoqE2E6UB
	D+qy6x8D48JqSJnxzHgl8Cs7ENcQei3dggNK3cCPrfRnUw1YcLfabagPe8RCIYj6eQj18N+JjHq3k
	m+ZA6a+sVfUixsXxoBGD/746AjilpJg0mCw/wnpeesf+PJLF0WXpxHVvFdI1i84xk0oQ5abSNtdRQ
	QDByIp3D53tZ42lJN9ACa8T6v8RgUs0OZTXNFgUoh+Zkfb3VDzwqzV/8M9aK3AQt9sbptht+yOEsy
	0/XZ//0R+4coRDWtSXTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE0Su-0001fJ-U3; Tue, 17 Mar 2020 00:52:16 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE0Sj-0001Wn-4r; Tue, 17 Mar 2020 00:52:06 +0000
Received: from ip5f5a5d2f.dynamic.kabel-deutschland.de ([95.90.93.47]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jE0Sh-0004VF-6h; Tue, 17 Mar 2020 01:52:03 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: remove properties from spdif
 node RK3399 Excavator
Date: Tue, 17 Mar 2020 01:52:02 +0100
Message-ID: <18213991.ifHWx50xby@phil>
In-Reply-To: <20200312172240.21362-1-jbx6244@gmail.com>
References: <20200312172240.21362-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_175205_340575_9E71CFCB 
X-CRM114-Status: UNSURE (   9.12  )
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

Am Donnerstag, 12. M=E4rz 2020, 18:22:39 CET schrieb Johan Jonker:
> An expermental test with the command below gives this error:
> =

> arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dt.yaml:
> spdif@ff870000:
> 'i2c-scl-falling-time-ns', 'i2c-scl-rising-time-ns', 'power-domains'
> do not match any of the regexes: 'pinctrl-[0-9]+'
> =

> 'i2c-scl-falling-time-ns', 'i2c-scl-rising-time-ns'
> are not valid properties for 'spdif' nodes, so remove them.
> =

> make ARCH=3Darm64 dtbs_check
> DT_SCHEMA_FILES=3DDocumentation/devicetree/bindings/sound/rockchip-spdif.=
yaml
> =

> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

applied for 5.7

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
