Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C02EE2495B
	for <lists+linux-rockchip@lfdr.de>; Tue, 21 May 2019 09:51:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xQL5d9lI07oQJlVVkrLyUT49Dv5488Qyk1yShTm0wu8=; b=GC+d4sAOTpxDTK
	hBXdNUwdbhlj5xemHQq0AzpY8noYTnFK7roR39ZIb8911II+Y6V+z6YsYAg9RISjPlELbjaLny9PC
	4Wt2RZ058eFzSbNvFQf3Bfp4cFV6v9jhfMzwT2A4beX+rimAVtBhOD5ipQYyd4QaVaghsSnYfHwcO
	XjD3WyEIZl/eo6gGtToViMTaaUATNgj5gQ15pAeo7qaYHDFJO/26wWuLFccMtg3dS+KjC1IwQcdaB
	jZcvAX4rBMSapkaSu0UQ8CMHty7FmaYG7QknlGGS+rki9+64xBcsDplE+p7gi9J8IlZeHSptwSYMJ
	q3mfFnb+kZ8dUzg4vtiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSzY6-0008SY-IU; Tue, 21 May 2019 07:51:02 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSzY2-0008Rt-Ut
 for linux-rockchip@lists.infradead.org; Tue, 21 May 2019 07:51:00 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id 582B72841E1
Subject: Re: [PATCH v4 3/3] platform/chrome: cros_ec_spi: Request the SPI
 thread be realtime
To: Douglas Anderson <dianders@chromium.org>, Mark Brown
 <broonie@kernel.org>, Benson Leung <bleung@chromium.org>
References: <20190515164814.258898-1-dianders@chromium.org>
 <20190515164814.258898-4-dianders@chromium.org>
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Message-ID: <74a31886-fa49-cabf-aa11-25b402e80414@collabora.com>
Date: Tue, 21 May 2019 09:50:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190515164814.258898-4-dianders@chromium.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_005059_129917_DFA7815A 
X-CRM114-Status: GOOD (  19.39  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: drinkcat@chromium.org, briannorris@chromium.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 mka@chromium.org, Guenter Roeck <groeck@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On 15/5/19 18:48, Douglas Anderson wrote:
> All currently known ECs in the wild are very sensitive to timing.
> Specifically the ECs are known to drop a transfer if more than 8 ms
> passes from the assertion of the chip select until the transfer
> finishes.
> 
> Let's use the new feature introduced in the patch (spi: Allow SPI
> devices to request the pumping thread be realtime") to request the SPI
> pumping thread be realtime.  This means that if we get shunted off to
> the SPI thread for whatever reason we won't get downgraded to low
> priority.
> 
> NOTES:
> - We still need to keep ourselves as high priority since the SPI core
>   doesn't guarantee that all transfers end up on the pumping thread
>   (in fact, it tries pretty hard to do them in the calling context).
> - If future Chrome OS ECs ever fix themselves to be less sensitive
>   then we could consider adding a property (or compatible string) to
>   not set this property.  For now we need it across the board.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> Reviewed-by: Guenter Roeck <groeck@chromium.org>

For my own reference:

Acked-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>

Thanks,
 Enric

> ---
> 
> Changes in v4: None
> Changes in v3:
> - Updated description and variable name since we no longer force.
> 
> Changes in v2:
> - Renamed variable to "force_rt_transfers".
> 
>  drivers/platform/chrome/cros_ec_spi.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/platform/chrome/cros_ec_spi.c b/drivers/platform/chrome/cros_ec_spi.c
> index 1e38a885c539..daf3119191c8 100644
> --- a/drivers/platform/chrome/cros_ec_spi.c
> +++ b/drivers/platform/chrome/cros_ec_spi.c
> @@ -740,6 +740,7 @@ static int cros_ec_spi_probe(struct spi_device *spi)
>  
>  	spi->bits_per_word = 8;
>  	spi->mode = SPI_MODE_0;
> +	spi->rt = true;
>  	err = spi_setup(spi);
>  	if (err < 0)
>  		return err;
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
