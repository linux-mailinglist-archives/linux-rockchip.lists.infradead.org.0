Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0912719114C
	for <lists+linux-rockchip@lfdr.de>; Tue, 24 Mar 2020 14:40:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=52lzU57VBOBuZ1fEiBaWE8dv1o/wTq8UJcHepY06zQs=; b=f/ttXORH5nHRfg
	upYXkmYW6JNmHFv6F5PxKElOsQY4pvrQpCStOG40cyzpg8EtbJwa9eq+tILejia7ueAxLjMLpAHT5
	MoB4t+tX/89UgZt62zzYrwrY6ikkDF6AW11Zyhib44hLXda3+QZDGDlk0OVXQ75w3Wdk17UXn3b5u
	mitRjhFfFq29hA23/3kpaeSJ/c1z2T2gI5htifPTxMjCzvRpfi3tbD4aE/fA+u8nEtPEy9gjKVOhd
	92NHpPH2Hb4rxqejjSr4XKm7FNgsOY12Z5Kq69kc+dOqgiH5jK+VfMy9oDQYvd5rNq9yGF12YRjFH
	vmLFPHPD8sJrEqANnKnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGjn1-0003aw-Ax; Tue, 24 Mar 2020 13:40:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGjml-0002GT-Ma; Tue, 24 Mar 2020 13:40:05 +0000
Received: from ip5f5a5d2f.dynamic.kabel-deutschland.de ([95.90.93.47]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jGjmf-0008HX-2K; Tue, 24 Mar 2020 14:39:57 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v2 1/3] dt-bindings: sound: convert rockchip spdif
 bindings to yaml
Date: Tue, 24 Mar 2020 14:39:56 +0100
Message-ID: <2135168.SEOWuCda4h@diego>
In-Reply-To: <20200324133506.GC7039@sirena.org.uk>
References: <20200324123155.11858-1-jbx6244@gmail.com>
 <20200324133506.GC7039@sirena.org.uk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_064003_902593_456B8408 
X-CRM114-Status: GOOD (  11.39  )
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 lgirdwood@gmail.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 Johan Jonker <jbx6244@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Mark,

Am Dienstag, 24. M=E4rz 2020, 14:35:06 CET schrieb Mark Brown:
> On Tue, Mar 24, 2020 at 01:31:53PM +0100, Johan Jonker wrote:
> > Current dts files with 'spdif' nodes are manually verified.
> > In order to automate this process rockchip-spdif.txt
> > has to be converted to yaml.
> =

> > Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> > ---
> > Changed V2:
> >   dmas and dma-names layout
> =

> This is the second v2 you've sent of this today

hmm at least when looking at my inbox ... I got one series for
spdif in v2 (this one) and one for i2s in v2. And yes they do look
somewhat identical in what they do but of course handle binding
changes for different controllers.

Heiko

> - it adds these but
> drops Rob's ack?
> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
