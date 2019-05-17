Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E13E621725
	for <lists+linux-rockchip@lfdr.de>; Fri, 17 May 2019 12:44:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/CZKnYuA+f9Q97DgD2w9rmpfSA797QGBArsGw7Gk8xg=; b=NDvwBJxBzcf4o7
	pR4at24frWsgfTWj+p1yFwck0kXMMYjQrCFkdUxDtEXP5EqcjMWY106wOx586NTx04OCM+1PYuuQg
	VmvqezH3eZaQg3TvkSNPlcM4RWXYPkmFulRoAPy3vseu7GH8HEyfeJPQB3FvEYHx82VWZm6lr1j+U
	GyYQlGl7iKGjQPrMMw2jiw5IS/Qc1xkR4XZ0bDuW+5iyBR5lTY8jitqfGtiN7tErvjp72Omj6eyyB
	+BAkaM8lBKbqKUuVmdR4Z1andrJX4OO7+kXxCyJrZcuMnJ7D5uKRdWtVYLIzk8COop0TuVdSIM+S0
	UHvf2lubbnhr9aLDEfNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRaLj-0004X2-90; Fri, 17 May 2019 10:44:27 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRaLa-0004QO-J8; Fri, 17 May 2019 10:44:19 +0000
Received: from we0524.dip.tu-dresden.de ([141.76.178.12] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hRaLX-0001UL-UH; Fri, 17 May 2019 12:44:15 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Matthias Kaehlcke <mka@chromium.org>
Subject: Re: [PATCH v2 1/3] ARM: dts: rockchip: raise CPU trip point
 temperature for veyron to 100 degC
Date: Fri, 17 May 2019 12:44:15 +0200
Message-ID: <2157639.ILuVUxfVHr@phil>
In-Reply-To: <20190516162942.154823-1-mka@chromium.org>
References: <20190516162942.154823-1-mka@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_034418_781006_6A13A400 
X-CRM114-Status: GOOD (  10.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 linux-kernel@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Donnerstag, 16. Mai 2019, 18:29:40 CEST schrieb Matthias Kaehlcke:
> This value matches what is used by the downstream Chrome OS 3.14
> kernel, the 'official' kernel for veyron devices. Keep the temperature
> for 'speedy' at 90=B0C, as in the downstream kernel.
> =

> Increase the temperature for a hardware shutdown to 125=B0C, which
> matches the downstream configuration and gives the system a chance
> to shut down orderly at the criticial trip point.
> =

> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>

applied all 3 for 5.3 with Doug's RB and did a small fix to the commit
message of patch2 ("thorse").

Thanks
Heiko




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
