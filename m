Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB14915062B
	for <lists+linux-rockchip@lfdr.de>; Mon,  3 Feb 2020 13:28:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1k3nOjefgrT9ludpVCpDdqIxnIAVk5PF/tezq8w1BG8=; b=PcynUS7ss/Rnof
	UKSGEjc2OBYyozmenzRWtNwANWqw6BqeQ7GUAJiGM5ovFGtqp6U5XXfp98mDYN2epM+15NMVvy99t
	h0eMLNfST/V4oMPZKPZhHXRG5DlD/DHgBNNwfP7pAMhW4v2pLfOliDWYogiaPMQ8hQfw1fJtRvkmY
	3aMRgqlcQRHeN/su5IADhLgZKTvj6LXbS+dKB+yJxclDuawyExyiPgRVRDcZ/LbLw4X9jKoKeeXp6
	44Q19yP3bE91Zh8Ahd8PwhlHBQwbSTe29gTdDZjLoyGJMPsQD5mjfsdeJg29qjXhiwoNNSs6hH1XJ
	80whdU0A0fI/e2kbHRoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyapx-00074E-Dc; Mon, 03 Feb 2020 12:28:21 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyapv-00073u-8d
 for linux-rockchip@lists.infradead.org; Mon, 03 Feb 2020 12:28:20 +0000
Received: from ip5f5a5d2f.dynamic.kabel-deutschland.de ([95.90.93.47]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iyapr-0004kZ-FK; Mon, 03 Feb 2020 13:28:15 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Markus Reichl <m.reichl@fivetechno.de>
Subject: Re: [PATCH] regulator: mp8859: add supply entry
Date: Mon, 03 Feb 2020 13:28:14 +0100
Message-ID: <2041997.mfULgpQ279@diego>
In-Reply-To: <20200203110034.1448-1-m.reichl@fivetechno.de>
References: <20200203110034.1448-1-m.reichl@fivetechno.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_042819_453497_1266504E 
X-CRM114-Status: GOOD (  13.34  )
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
Cc: linux-rockchip@lists.infradead.org, Mark Brown <broonie@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Montag, 3. Februar 2020, 12:00:33 CET schrieb Markus Reichl:
> Add vin_supply to the regulator description to support a nice
> regulator tree.
> 
> Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>

double checked the datasheet for the supply name and all is correct, so

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
>  drivers/regulator/mp8859.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/regulator/mp8859.c b/drivers/regulator/mp8859.c
> index 1d26b506ee5b..6ed987648188 100644
> --- a/drivers/regulator/mp8859.c
> +++ b/drivers/regulator/mp8859.c
> @@ -95,6 +95,7 @@ static const struct regulator_desc mp8859_regulators[] = {
>  		.id = 0,
>  		.type = REGULATOR_VOLTAGE,
>  		.name = "mp8859_dcdc",
> +		.supply_name = "vin",
>  		.of_match = of_match_ptr("mp8859_dcdc"),
>  		.n_voltages = VOL_MAX_IDX + 1,
>  		.linear_ranges = mp8859_dcdc_ranges,
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
