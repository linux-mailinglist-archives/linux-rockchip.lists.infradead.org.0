Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 093DF1B88EE
	for <lists+linux-rockchip@lfdr.de>; Sat, 25 Apr 2020 21:29:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hpT5p3Mw1mDeohxvC1i3OdqW1e3AlW/3dnNns7NOYok=; b=o4w0FmmqTWinzx
	QhKm9gGw/A85rvKeugwUAIRONZkakfJ5+s+385HodrkLL6AoUdqrlnoCAPFTlgUYAXuWLxg8+LS5h
	T6PE58wwrxR+TfVN0WI9ejx/8ZBx0TUd2rfJ3Ma8TtKph9qoAy3a5cqnbHjYOupFBT5r2wUYtXLpi
	DmqzIMY16//eViOsTy1nCghNGxMHOSrcJAZXxfW/nWFCVe+ognIEDOqQFhHN5b78r9cWbeoC2cwcW
	AbCj14ZLze4fTI0te56U3eauldXr1n+mJKP81grhwZCH3BuNVXO9CjImb9loPuvPNl9nTuyZ615EA
	l5oNZ4wE40M0G3ICPU5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSQUf-0000iH-E6; Sat, 25 Apr 2020 19:29:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSQUb-0000fa-FW
 for linux-rockchip@lists.infradead.org; Sat, 25 Apr 2020 19:29:39 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F10E0206D4;
 Sat, 25 Apr 2020 19:29:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587842976;
 bh=2jp3t7QXeUX3mIgHp2d/HsdvcvVVVv4RrbuFM7eI1vE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=tpdMYXSHX/jTmct04NI6/pPwCxE99EDOwmXUOHY8UmNChwePb5PgGycckABIkglyG
 Yi3kmsJTiL74rtlKyvxoCP5mmIc/NUxSE00DEBB03EjbzOvO2dXtEZeecJ9Zr5X/SF
 pF65nt6JW211C8PG8zqixpX6e9Y0jxNdnyTAJLrw=
Date: Sat, 25 Apr 2020 20:29:32 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v5 2/3] iio: adc: rockchip_saradc: better prefix for
 channel constant
Message-ID: <20200425202932.364ae11e@archlinux>
In-Reply-To: <20200419100207.58108-2-heiko@sntech.de>
References: <20200419100207.58108-1-heiko@sntech.de>
 <20200419100207.58108-2-heiko@sntech.de>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_122937_646376_7B1CFA56 
X-CRM114-Status: GOOD (  13.47  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: lars@metafoo.de, xxm@rock-chips.com, linux-iio@vger.kernel.org,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 linux-kernel@vger.kernel.org, kever.yang@rock-chips.com,
 linux-rockchip@lists.infradead.org, pmeerw@pmeerw.net, knaack.h@gmx.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Sun, 19 Apr 2020 12:02:06 +0200
Heiko Stuebner <heiko@sntech.de> wrote:

> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> As suggested give the current ADC_CHANNEL constant a distinct
> and consistent prefix.
> 
> Suggested-by: Peter Meerwald-Stadler <pmeerw@pmeerw.net>
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
Good change. I'll pick up once the rest of the series is ready.

Jonathan

> ---
> changes in v5:
> - new patch
> 
>  drivers/iio/adc/rockchip_saradc.c | 24 ++++++++++++------------
>  1 file changed, 12 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockchip_saradc.c
> index 270eb7e83823..29d7f6e4057e 100644
> --- a/drivers/iio/adc/rockchip_saradc.c
> +++ b/drivers/iio/adc/rockchip_saradc.c
> @@ -118,7 +118,7 @@ static const struct iio_info rockchip_saradc_iio_info = {
>  	.read_raw = rockchip_saradc_read_raw,
>  };
>  
> -#define ADC_CHANNEL(_index, _id) {				\
> +#define SARADC_CHANNEL(_index, _id) {				\
>  	.type = IIO_VOLTAGE,					\
>  	.indexed = 1,						\
>  	.channel = _index,					\
> @@ -128,9 +128,9 @@ static const struct iio_info rockchip_saradc_iio_info = {
>  }
>  
>  static const struct iio_chan_spec rockchip_saradc_iio_channels[] = {
> -	ADC_CHANNEL(0, "adc0"),
> -	ADC_CHANNEL(1, "adc1"),
> -	ADC_CHANNEL(2, "adc2"),
> +	SARADC_CHANNEL(0, "adc0"),
> +	SARADC_CHANNEL(1, "adc1"),
> +	SARADC_CHANNEL(2, "adc2"),
>  };
>  
>  static const struct rockchip_saradc_data saradc_data = {
> @@ -141,8 +141,8 @@ static const struct rockchip_saradc_data saradc_data = {
>  };
>  
>  static const struct iio_chan_spec rockchip_rk3066_tsadc_iio_channels[] = {
> -	ADC_CHANNEL(0, "adc0"),
> -	ADC_CHANNEL(1, "adc1"),
> +	SARADC_CHANNEL(0, "adc0"),
> +	SARADC_CHANNEL(1, "adc1"),
>  };
>  
>  static const struct rockchip_saradc_data rk3066_tsadc_data = {
> @@ -153,12 +153,12 @@ static const struct rockchip_saradc_data rk3066_tsadc_data = {
>  };
>  
>  static const struct iio_chan_spec rockchip_rk3399_saradc_iio_channels[] = {
> -	ADC_CHANNEL(0, "adc0"),
> -	ADC_CHANNEL(1, "adc1"),
> -	ADC_CHANNEL(2, "adc2"),
> -	ADC_CHANNEL(3, "adc3"),
> -	ADC_CHANNEL(4, "adc4"),
> -	ADC_CHANNEL(5, "adc5"),
> +	SARADC_CHANNEL(0, "adc0"),
> +	SARADC_CHANNEL(1, "adc1"),
> +	SARADC_CHANNEL(2, "adc2"),
> +	SARADC_CHANNEL(3, "adc3"),
> +	SARADC_CHANNEL(4, "adc4"),
> +	SARADC_CHANNEL(5, "adc5"),
>  };
>  
>  static const struct rockchip_saradc_data rk3399_saradc_data = {


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
