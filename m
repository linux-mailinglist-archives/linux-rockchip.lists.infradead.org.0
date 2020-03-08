Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D87EE17D6D5
	for <lists+linux-rockchip@lfdr.de>; Sun,  8 Mar 2020 23:39:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D5TYjXWcVPF0a5KXZoR36awLJsFap7tGLNO6zdKgo40=; b=EdalX4pQd1DrKK
	xuIV9pqBRVST/tQ/34hIW5TeLlYQAR2/Z0weKCgm2fKMOZYqqA33BccvUq/Hr5wMTu/TNRDopvv7o
	EG900oQznLnmHdPU9yhZuDjj2coFEzEqqKidSPKu2pa+As2PFDRq2kqJ2qgs58mhBGrrRWVZkLcVV
	D31W6/bbKi8X5EYS3AdKQWucj3whZDY9gQ5pOUlJwazKJQM68++Np4Xw/cb/SUb7QExNqrUJcyu4A
	21TyK0eqnoMMmwnkbywL0+1nHgE9wJ3Sbp5FaD8TQUSbQ1fUuEf250/qrMVP5n9xLWv/VxFZ8ngCt
	RvnDvZ37/fR7XhnhNGNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jB4aF-0000bq-OS; Sun, 08 Mar 2020 22:39:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jB4aD-0000bR-8A; Sun, 08 Mar 2020 22:39:42 +0000
Received: from p508fd11c.dip0.t-ipconnect.de ([80.143.209.28]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jB4a8-00040n-Ox; Sun, 08 Mar 2020 23:39:36 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: add Odroid Advance Go
Date: Sun, 08 Mar 2020 23:39:35 +0100
Message-ID: <2618559.AJtVb54S78@phil>
In-Reply-To: <20200308223250.353053-3-heiko@sntech.de>
References: <20200308223250.353053-1-heiko@sntech.de>
 <20200308223250.353053-3-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_153941_440316_7A6F82AE 
X-CRM114-Status: GOOD (  10.45  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, kever.yang@rock-chips.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, jbx6244@gmail.com,
 robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Sonntag, 8. M=E4rz 2020, 23:32:50 CET schrieb Heiko Stuebner:
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> =

> The Odroid Advance Go is a handheld based on Rockchip's rk3326 soc
> with a DSI display and some handheld controls including an analog
> joystick connected to the saradc.
> =

> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

> +		 *      *** ODROIDGO2-Advance Switch layoout ***

It was pointed out to me that there is a typo here, layout instead
of layoout ;-) .

I'll hopefully just remember to remove that when applying, if I don't
need a v3 for other things.

> +		 * |------------------------------------------------|
> +		 * | sw15                                      sw16 |
> +		 * |------------------------------------------------|
> +		 * |     sw1      |-------------------|      sw8    |
> +		 * |  sw3   sw4   |                   |   sw7   sw5 |
> +		 * |     sw2      |    LCD Display    |      sw6    |
> +		 * |              |                   |             |
> +		 * |              |-------------------|             |
> +		 * |         sw9 sw10   sw11 sw12   sw13 sw14       |
> +		 * |------------------------------------------------|
> +		 */
> +




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
