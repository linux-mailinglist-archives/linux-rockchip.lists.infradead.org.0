Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99D761DE27B
	for <lists+linux-rockchip@lfdr.de>; Fri, 22 May 2020 10:57:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Ctlz4XZVTqxbqHH0zkcHC7kibrt4bzueAfdBgqQcvc=; b=QgI18KScRNg8w1
	YEY3O/jXqoQCmNVfBpn4oRSNCNtqCLJxEeSP8mNDidGtQR02U4rVMeypi6HPh6BTcR8nbcKO8EJjw
	pbZMlh+AUBXHSaV+Y67pxND8wDq5GFNGVmvBmsjdFraWLvL/Fr31SU6xp8Gfc24WRWwrFz+dRdrgY
	O2ZPKFX//gzG0CDKW6xo59aO5u/XED56zfEWsedNi0YX5ECSvqJdg0eY0IFvq2tJxFilpfoACNn2n
	EX6TjszcIuBEWDPNxRp+8WShCsnxTxEi7SjAxH/UFwUyhO6MauBturtlfEk5RYTsu5TOTWAO2vSRy
	AS5AncbtYCIRsRXjTlQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc3UG-0002sD-Pr; Fri, 22 May 2020 08:57:04 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc3UB-0002pe-4G; Fri, 22 May 2020 08:57:00 +0000
Received: by mail-pj1-x1043.google.com with SMTP id ci23so4704432pjb.5;
 Fri, 22 May 2020 01:56:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HqSbS1DmOxb6NnvLUkPt9gWJFICRLVchToB7BWy3wkM=;
 b=Qr0aiPW8ez2hrgndNNW2aOj6iqlB62Q8Csen7rUnDQ4NRSQgabRdbt4Bar3FrgoeRU
 YXe/TP39TtOUlyEh1cLBPdZCk/3YLTXEI8exjjKaqMuHdbLDb/LDti2axS0fZoZdjv6X
 0rk/fuJGk8gCNdmHKmpZH1mOAOuASHs+GvXFrs0vC465xuXuDc20FQ9MDZktvpkvvcM+
 wP1+Dj3op/rsVKhvvxL00J+CujdvevgPnITzD52gyqucL8HCn+9kocVSp/x8eCG/ChO+
 d53iF9MzUCWVAhIo2r3a8H2gA92P6tU2Yaymg7kj07BQto/HSxVIzbiWLzcUStYCPO+c
 Rxyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HqSbS1DmOxb6NnvLUkPt9gWJFICRLVchToB7BWy3wkM=;
 b=bnmd209xmYBRRJ767/9vaLLeAG4vrtoFNZoRRSfzq5VR9MpQJ9zBT+Lyy0J2tyKsly
 FB57+oO2e3mNY3+j9bLZycYzGEEGJJoaf6pdecgfEo8hCtQ6S/ybtiCK89dBSQ8XIKj6
 xBAEMJq89yALs3xCuHN2y3vbXhgar4nAz3D/roqW7bbxynzqdmBBGBEzgZ5sOS1R8WF9
 OtpXTFwd28/E1xon0m5HOZnzOHmmS/aUBcrUiTQuveMOcykW5oSuLCLZZHlf+nNAdqM1
 xbdbcmY8mp/QC+vKIYgZRX3guKa8+w1aG6CgaDSbLQoezHSvYsA1TlTp6bxIdzgbztXz
 k5wQ==
X-Gm-Message-State: AOAM531ozYGGdWusTyc6HSTwsd3ddP8rsTPPrkgXzGER9to1SkfpUthG
 vxLCV9HVrkQNmzCbBaZRRqDg/Xij8Bu3of8e0NLfMnoi95AOsA==
X-Google-Smtp-Source: ABdhPJwsYnXnt44yegP0XDUJYXKvunyOh6UzNzQcRgehUIEvMayZ6aBV9NpqOVREx8Il9izBbtLfXR3AicsFux8O3e4=
X-Received: by 2002:a17:902:ea8a:: with SMTP id
 x10mr13795881plb.255.1590137817033; 
 Fri, 22 May 2020 01:56:57 -0700 (PDT)
MIME-Version: 1.0
References: <20200522082208.383631-1-alexandru.ardelean@analog.com>
In-Reply-To: <20200522082208.383631-1-alexandru.ardelean@analog.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 22 May 2020 11:56:40 +0300
Message-ID: <CAHp75VfqxJxa1Uk3h4vfzQOdZDRr8Lqvt3Z5vzpp5NAw=u_ZPQ@mail.gmail.com>
Subject: Re: [PATCH 1/5] iio: core: pass parent device as parameter during
 allocation
To: Alexandru Ardelean <alexandru.ardelean@analog.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_015659_171813_5BCC5F72 
X-CRM114-Status: GOOD (  27.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: milo.kim@ti.com, tomislav.denis@avl.com,
 Dan Robertson <dan@dlrobertson.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 linux-aspeed@lists.ozlabs.org, linux-iio <linux-iio@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Eddie James <eajames@linux.ibm.com>,
 Platform Driver <platform-driver-x86@vger.kernel.org>,
 Paul Cercueil <paul@crapouillou.net>,
 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>,
 Song Qiang <songqiang1304521@gmail.com>,
 Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 linux-samsung-soc@vger.kernel.org, Kevin Hilman <khilman@baylibre.com>,
 tduszyns@gmail.com, Krzysztof Kozlowski <krzk@kernel.org>,
 linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 agross@kernel.org, linux-input <linux-input@vger.kernel.org>,
 orsonzhai@gmail.com, Alexandre TORGUE <alexandre.torgue@st.com>,
 Linux PM <linux-pm@vger.kernel.org>, linux-arm-msm@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>, Jiri Kosina <jikos@kernel.org>,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Maxime Ripard <mripard@kernel.org>, Vladimir Zapolskiy <vz@mleia.com>,
 Hans de Goede <hdegoede@redhat.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Andreas Klinger <ak@it-klinger.de>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-amlogic@lists.infradead.org, Fabrice GASNIER <fabrice.gasnier@st.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Scott Branden <sbranden@broadcom.com>, rmfrfs@gmail.com,
 Shawn Guo <shawnguo@kernel.org>, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Azael Avalos <coproscefalo@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ray Jui <rjui@broadcom.com>, Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, zhang.lyra@gmail.com,
 baolin.wang7@gmail.com, Kevin Tsai <ktsai@capellamicro.com>,
 Syed Nayyar Waris <syednwaris@gmail.com>, Peter Rosin <peda@axentia.se>,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, May 22, 2020 at 11:36 AM Alexandru Ardelean
<alexandru.ardelean@analog.com> wrote:
>
> The change passes the parent device to the iio_device_alloc() call. This
> also updates the devm_iio_device_alloc() call to consider the device object
> as the parent device by default.
>
> Having it passed like this, should ensure that any IIO device object
> already has a device object as parent, allowing for neater control, like
> passing the 'indio_dev' object for other stuff [like buffers/triggers/etc],
> and potentially creating iiom_xxx(indio_dev) functions.
>
> With this patch, only the 'drivers/platform/x86/toshiba_acpi.c' needs an
> update to pass the parent object as a parameter.

Acked-by: Andy Shevchenko <andy.shevchenko@gmail.com>

>
> In the next patch all devm_iio_device_alloc() calls will be handled.
>
> Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
> ---
>  drivers/iio/dummy/iio_simple_dummy.c         | 14 ++++++++------
>  drivers/iio/industrialio-core.c              | 11 ++++++-----
>  drivers/platform/x86/toshiba_acpi.c          |  3 +--
>  drivers/staging/iio/Documentation/device.txt |  4 +---
>  include/linux/iio/iio.h                      |  4 ++--
>  5 files changed, 18 insertions(+), 18 deletions(-)
>
> diff --git a/drivers/iio/dummy/iio_simple_dummy.c b/drivers/iio/dummy/iio_simple_dummy.c
> index 6cb02299a215..b35ae7c039f7 100644
> --- a/drivers/iio/dummy/iio_simple_dummy.c
> +++ b/drivers/iio/dummy/iio_simple_dummy.c
> @@ -566,6 +566,13 @@ static struct iio_sw_device *iio_dummy_probe(const char *name)
>         struct iio_dev *indio_dev;
>         struct iio_dummy_state *st;
>         struct iio_sw_device *swd;
> +       struct device *parent = NULL;
> +
> +       /*
> +        * With hardware: Set the parent device.
> +        * parent = &spi->dev;
> +        * parent = &client->dev;
> +        */
>
>         swd = kzalloc(sizeof(*swd), GFP_KERNEL);
>         if (!swd) {
> @@ -580,7 +587,7 @@ static struct iio_sw_device *iio_dummy_probe(const char *name)
>          * It also has a region (accessed by iio_priv()
>          * for chip specific state information.
>          */
> -       indio_dev = iio_device_alloc(sizeof(*st));
> +       indio_dev = iio_device_alloc(parent, sizeof(*st));
>         if (!indio_dev) {
>                 ret = -ENOMEM;
>                 goto error_ret;
> @@ -590,11 +597,6 @@ static struct iio_sw_device *iio_dummy_probe(const char *name)
>         mutex_init(&st->lock);
>
>         iio_dummy_init_device(indio_dev);
> -       /*
> -        * With hardware: Set the parent device.
> -        * indio_dev->dev.parent = &spi->dev;
> -        * indio_dev->dev.parent = &client->dev;
> -        */
>
>          /*
>          * Make the iio_dev struct available to remove function.
> diff --git a/drivers/iio/industrialio-core.c b/drivers/iio/industrialio-core.c
> index 1527f01a44f1..75661661aaba 100644
> --- a/drivers/iio/industrialio-core.c
> +++ b/drivers/iio/industrialio-core.c
> @@ -1493,7 +1493,7 @@ struct device_type iio_device_type = {
>   * iio_device_alloc() - allocate an iio_dev from a driver
>   * @sizeof_priv:       Space to allocate for private structure.
>   **/
> -struct iio_dev *iio_device_alloc(int sizeof_priv)
> +struct iio_dev *iio_device_alloc(struct device *parent, int sizeof_priv)
>  {
>         struct iio_dev *dev;
>         size_t alloc_size;
> @@ -1510,6 +1510,7 @@ struct iio_dev *iio_device_alloc(int sizeof_priv)
>         if (!dev)
>                 return NULL;
>
> +       dev->dev.parent = parent;
>         dev->dev.groups = dev->groups;
>         dev->dev.type = &iio_device_type;
>         dev->dev.bus = &iio_bus_type;
> @@ -1551,7 +1552,7 @@ static void devm_iio_device_release(struct device *dev, void *res)
>
>  /**
>   * devm_iio_device_alloc - Resource-managed iio_device_alloc()
> - * @dev:               Device to allocate iio_dev for
> + * @parent:            Device to allocate iio_dev for, and parent for this IIO device
>   * @sizeof_priv:       Space to allocate for private structure.
>   *
>   * Managed iio_device_alloc. iio_dev allocated with this function is
> @@ -1560,7 +1561,7 @@ static void devm_iio_device_release(struct device *dev, void *res)
>   * RETURNS:
>   * Pointer to allocated iio_dev on success, NULL on failure.
>   */
> -struct iio_dev *devm_iio_device_alloc(struct device *dev, int sizeof_priv)
> +struct iio_dev *devm_iio_device_alloc(struct device *parent, int sizeof_priv)
>  {
>         struct iio_dev **ptr, *iio_dev;
>
> @@ -1569,10 +1570,10 @@ struct iio_dev *devm_iio_device_alloc(struct device *dev, int sizeof_priv)
>         if (!ptr)
>                 return NULL;
>
> -       iio_dev = iio_device_alloc(sizeof_priv);
> +       iio_dev = iio_device_alloc(parent, sizeof_priv);
>         if (iio_dev) {
>                 *ptr = iio_dev;
> -               devres_add(dev, ptr);
> +               devres_add(parent, ptr);
>         } else {
>                 devres_free(ptr);
>         }
> diff --git a/drivers/platform/x86/toshiba_acpi.c b/drivers/platform/x86/toshiba_acpi.c
> index 808944546739..4a4d09c352dd 100644
> --- a/drivers/platform/x86/toshiba_acpi.c
> +++ b/drivers/platform/x86/toshiba_acpi.c
> @@ -3128,7 +3128,7 @@ static int toshiba_acpi_add(struct acpi_device *acpi_dev)
>
>         toshiba_accelerometer_available(dev);
>         if (dev->accelerometer_supported) {
> -               dev->indio_dev = iio_device_alloc(sizeof(*dev));
> +               dev->indio_dev = iio_device_alloc(&acpi_dev->dev, sizeof(*dev));
>                 if (!dev->indio_dev) {
>                         pr_err("Unable to allocate iio device\n");
>                         goto iio_error;
> @@ -3138,7 +3138,6 @@ static int toshiba_acpi_add(struct acpi_device *acpi_dev)
>
>                 dev->indio_dev->info = &toshiba_iio_accel_info;
>                 dev->indio_dev->name = "Toshiba accelerometer";
> -               dev->indio_dev->dev.parent = &acpi_dev->dev;
>                 dev->indio_dev->modes = INDIO_DIRECT_MODE;
>                 dev->indio_dev->channels = toshiba_iio_accel_channels;
>                 dev->indio_dev->num_channels =
> diff --git a/drivers/staging/iio/Documentation/device.txt b/drivers/staging/iio/Documentation/device.txt
> index ec42544a46aa..0d1275b1eb3f 100644
> --- a/drivers/staging/iio/Documentation/device.txt
> +++ b/drivers/staging/iio/Documentation/device.txt
> @@ -8,7 +8,7 @@ The crucial structure for device drivers in iio is iio_dev.
>
>  First allocate one using:
>
> -struct iio_dev *indio_dev = iio_device_alloc(sizeof(struct chip_state));
> +struct iio_dev *indio_dev = iio_device_alloc(parent, sizeof(struct chip_state));
>  where chip_state is a structure of local state data for this instance of
>  the chip.
>
> @@ -16,8 +16,6 @@ That data can be accessed using iio_priv(struct iio_dev *).
>
>  Then fill in the following:
>
> -- indio_dev->dev.parent
> -       Struct device associated with the underlying hardware.
>  - indio_dev->name
>         Name of the device being driven - made available as the name
>         attribute in sysfs.
> diff --git a/include/linux/iio/iio.h b/include/linux/iio/iio.h
> index a1be82e74c93..91a69f4751aa 100644
> --- a/include/linux/iio/iio.h
> +++ b/include/linux/iio/iio.h
> @@ -676,7 +676,7 @@ static inline void *iio_device_get_drvdata(struct iio_dev *indio_dev)
>
>  /* Can we make this smaller? */
>  #define IIO_ALIGN L1_CACHE_BYTES
> -struct iio_dev *iio_device_alloc(int sizeof_priv);
> +struct iio_dev *iio_device_alloc(struct device *parent, int sizeof_priv);
>
>  static inline void *iio_priv(const struct iio_dev *indio_dev)
>  {
> @@ -690,7 +690,7 @@ static inline struct iio_dev *iio_priv_to_dev(void *priv)
>  }
>
>  void iio_device_free(struct iio_dev *indio_dev);
> -struct iio_dev *devm_iio_device_alloc(struct device *dev, int sizeof_priv);
> +struct iio_dev *devm_iio_device_alloc(struct device *parent, int sizeof_priv);
>  struct iio_trigger *devm_iio_trigger_alloc(struct device *dev,
>                                                 const char *fmt, ...);
>  /**
> --
> 2.25.1
>


-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
