Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC2A81B5B01
	for <lists+linux-rockchip@lfdr.de>; Thu, 23 Apr 2020 14:02:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FJY7ScxdhHx21GCeQN8WKLe3rqAgw6ctOzoRepOVBtE=; b=U8mYXmBqi62uyMABUYvOX4XD7
	29QNHW4n6uB3YrGONXOz6x9Y/y/RiCOK69KsuvC9BGyVtvNPpLrbNjW6ks0CImGUm5vXEsROB9nPn
	LTAdsS3hDGUtV5UZ6xN5XzJ5kPKqf8GkidfRta0A3nR4NT/e6I83BiSUXSaLT2ABFp7dSMCk4i0bG
	uJ++jReNsYWQNm42r2nKcrpZak58BTYO2/N5RFTBxGz3bCFcGPU8qxSavPlNkrOLS0pwZ67n7o2lh
	U7rLVuLt8Xio3F9vUAzyBQD8GwFW5I4NgQzFpXM7ty8BBXRzlPfQPSlR7HqtKddk/PRFWe61ndwML
	d7Qnrr+JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRaZ9-00020W-3Q; Thu, 23 Apr 2020 12:02:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRaZ5-0001zx-U2
 for linux-rockchip@lists.infradead.org; Thu, 23 Apr 2020 12:02:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A995431B;
 Thu, 23 Apr 2020 05:02:45 -0700 (PDT)
Received: from [10.57.33.170] (unknown [10.57.33.170])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0ACE73F6CF;
 Thu, 23 Apr 2020 05:02:42 -0700 (PDT)
Subject: Re: [PATCH] usb: fusb302: Convert to use GPIO descriptors
To: Linus Walleij <linus.walleij@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20200415192448.305257-1-linus.walleij@linaro.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <22317f07-ad49-ada2-b323-ad16695ae3d2@arm.com>
Date: Thu, 23 Apr 2020 13:02:42 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200415192448.305257-1-linus.walleij@linaro.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_050248_053807_FD1AF777 
X-CRM114-Status: GOOD (  33.99  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Heiko Stuebner <heiko@sntech.de>, Tobias Schramm <t.schramm@manjaro.org>,
 Yueyao Zhu <yueyao@google.com>, linux-usb@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Guenter Roeck <linux@roeck-us.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 2020-04-15 8:24 pm, Linus Walleij wrote:
> This converts the FUSB302 driver to use GPIO descriptors.
> The conversion to descriptors per se is pretty straight-forward.
> 
> In the process I discovered that:
> 
> 1. The driver uses a completely undocumented device tree binding
>     for the interrupt GPIO line, "fcs,int_n". Ooops.
> 
> 2. The undocumented binding, presumably since it has not seen
>     review, is just "fcs,int_n", lacking the compulsory "-gpios"
>     suffix and also something that is not a good name because
>     the "_n" implies the line is inverted which is something we
>     handle with flags in the device tree. Ooops.
> 
> 3. Possibly the driver should not be requesting the line as a
>     GPIO and request the corresponding interrupt line by open
>     coding, the GPIO chip is very likely doubleing as an IRQ
>     controller and can probably provide an interrupt directly
>     for this line with interrupts-extended = <&gpio0 ...>;
> 
> 4. Possibly the IRQ should just be tagged on the I2C client node
>     in the device tree like apparently ACPI does, as it overrides
>     this IRQ with client->irq if that exists.
> 
> But now it is too late to do much about that and as I can see
> this is used like this in the Pinebook which is a shipping product
> so let'a just contain the mess and move on.
> 
> The property currently appears in:
> arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> 
> Create a quirk in the GPIO OF library to allow this property
> specifically to be specified without the "-gpios" suffix, we have
> other such bindings already.

FWIW, the datasheet makes it clear than INT_N is just a regular IRQ 
output, so it really should be specified as an interrupt targeting the 
GPIO controller just like any other I2C chip, and the FUSB302 binding 
itself supports.

The Pinebook Pro devicetree has only just landed this cycle, so there 
should still be plenty of time to fix it and not have to worry about an 
ugly undocumented quirk. The downstream vendor kernels use a totally 
different FUSB302 driver from the upstream one (based on extcon rather 
than the typec framework) so I don't think downstream DTBs are a concern.

Robin.

> Cc: Tobias Schramm <t.schramm@manjaro.org>
> Cc: Heikki Krogerus <heikki.krogerus@linux.intel.com>
> Cc: Yueyao Zhu <yueyao@google.com>
> Cc: Guenter Roeck <linux@roeck-us.net>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> This is now covered as far as GPIO is concerned but you might
> want to look into creating proper bindings for this or
> correcting the devicetree.
> ---
>   drivers/gpio/gpiolib-of.c        | 21 +++++++++++++++++++++
>   drivers/usb/typec/tcpm/fusb302.c | 32 +++++++++-----------------------
>   2 files changed, 30 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/gpio/gpiolib-of.c b/drivers/gpio/gpiolib-of.c
> index ccc449df3792..20c2c428168e 100644
> --- a/drivers/gpio/gpiolib-of.c
> +++ b/drivers/gpio/gpiolib-of.c
> @@ -460,6 +460,24 @@ static struct gpio_desc *of_find_arizona_gpio(struct device *dev,
>   	return of_get_named_gpiod_flags(dev->of_node, con_id, 0, of_flags);
>   }
>   
> +static struct gpio_desc *of_find_usb_gpio(struct device *dev,
> +					  const char *con_id,
> +					  enum of_gpio_flags *of_flags)
> +{
> +	/*
> +	 * Currently this USB quirk is only for the Fairchild FUSB302 host which is using
> +	 * an undocumented DT GPIO line named "fcs,int_n" without the compulsory "-gpios"
> +	 * suffix.
> +	 */
> +	if (!IS_ENABLED(CONFIG_TYPEC_FUSB302))
> +		return ERR_PTR(-ENOENT);
> +
> +	if (!con_id || strcmp(con_id, "fcs,int_n"))
> +		return ERR_PTR(-ENOENT);
> +
> +	return of_get_named_gpiod_flags(dev->of_node, con_id, 0, of_flags);
> +}
> +
>   struct gpio_desc *of_find_gpio(struct device *dev, const char *con_id,
>   			       unsigned int idx, unsigned long *flags)
>   {
> @@ -504,6 +522,9 @@ struct gpio_desc *of_find_gpio(struct device *dev, const char *con_id,
>   	if (PTR_ERR(desc) == -ENOENT)
>   		desc = of_find_arizona_gpio(dev, con_id, &of_flags);
>   
> +	if (PTR_ERR(desc) == -ENOENT)
> +		desc = of_find_usb_gpio(dev, con_id, &of_flags);
> +
>   	if (IS_ERR(desc))
>   		return desc;
>   
> diff --git a/drivers/usb/typec/tcpm/fusb302.c b/drivers/usb/typec/tcpm/fusb302.c
> index b498960ff72b..b28facece43c 100644
> --- a/drivers/usb/typec/tcpm/fusb302.c
> +++ b/drivers/usb/typec/tcpm/fusb302.c
> @@ -9,14 +9,13 @@
>   #include <linux/delay.h>
>   #include <linux/errno.h>
>   #include <linux/extcon.h>
> -#include <linux/gpio.h>
> +#include <linux/gpio/consumer.h>
>   #include <linux/i2c.h>
>   #include <linux/interrupt.h>
>   #include <linux/kernel.h>
>   #include <linux/module.h>
>   #include <linux/mutex.h>
>   #include <linux/of_device.h>
> -#include <linux/of_gpio.h>
>   #include <linux/pinctrl/consumer.h>
>   #include <linux/proc_fs.h>
>   #include <linux/regulator/consumer.h>
> @@ -83,7 +82,7 @@ struct fusb302_chip {
>   	struct work_struct irq_work;
>   	bool irq_suspended;
>   	bool irq_while_suspended;
> -	int gpio_int_n;
> +	struct gpio_desc *gpio_int_n;
>   	int gpio_int_n_irq;
>   	struct extcon_dev *extcon;
>   
> @@ -1618,30 +1617,17 @@ static void fusb302_irq_work(struct work_struct *work)
>   
>   static int init_gpio(struct fusb302_chip *chip)
>   {
> -	struct device_node *node;
> +	struct device *dev = chip->dev;
>   	int ret = 0;
>   
> -	node = chip->dev->of_node;
> -	chip->gpio_int_n = of_get_named_gpio(node, "fcs,int_n", 0);
> -	if (!gpio_is_valid(chip->gpio_int_n)) {
> -		ret = chip->gpio_int_n;
> -		dev_err(chip->dev, "cannot get named GPIO Int_N, ret=%d", ret);
> -		return ret;
> -	}
> -	ret = devm_gpio_request(chip->dev, chip->gpio_int_n, "fcs,int_n");
> -	if (ret < 0) {
> -		dev_err(chip->dev, "cannot request GPIO Int_N, ret=%d", ret);
> -		return ret;
> -	}
> -	ret = gpio_direction_input(chip->gpio_int_n);
> -	if (ret < 0) {
> -		dev_err(chip->dev,
> -			"cannot set GPIO Int_N to input, ret=%d", ret);
> -		return ret;
> +	chip->gpio_int_n = devm_gpiod_get(dev, "fcs,int_n", GPIOD_IN);
> +	if (IS_ERR(chip->gpio_int_n)) {
> +		dev_err(dev, "failed to request gpio_int_n\n");
> +		return PTR_ERR(chip->gpio_int_n);
>   	}
> -	ret = gpio_to_irq(chip->gpio_int_n);
> +	ret = gpiod_to_irq(chip->gpio_int_n);
>   	if (ret < 0) {
> -		dev_err(chip->dev,
> +		dev_err(dev,
>   			"cannot request IRQ for GPIO Int_N, ret=%d", ret);
>   		return ret;
>   	}
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
