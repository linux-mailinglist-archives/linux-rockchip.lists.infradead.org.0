Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 825CD1DE26F
	for <lists+linux-rockchip@lfdr.de>; Fri, 22 May 2020 10:54:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AAf2StA3DRIqPeYVwgqzT4NRNcZDtKc5PgxB6XLdGG0=; b=e94hTIn+vav3AA
	d9/631hchQ3Urug8323ScLk0pJJUeXbITgFu6rQvcWO2YexfF9CA9WHpG11TpYELRqWoMT7yBLFFt
	pXMEJnOEbZe6xDsev9P5Wey7zqoxLVsI1wfKolR99pBG57AXOVtFUk3zfF/fOXJaDoJIeEOTgq+jJ
	lqaWJ/1XnZZN8q59fcV2tierF2l/SdbXKbA+E0aIQntSRJ5s/UjVRzH0dSjAPx6SbvOVICaaUDmF/
	7SeYJRTvu73uPT4rUjLwaXt6SXM7FRGR794T2hQsjSQXpix19ymLhThz8OGwBJpr+Nj2Kn2kRdAes
	qxkhGibivHzuHAkSx1rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc3RW-000064-MY; Fri, 22 May 2020 08:54:14 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc3RQ-0008VO-Gy; Fri, 22 May 2020 08:54:09 +0000
Received: by mail-pl1-x643.google.com with SMTP id q16so4149931plr.2;
 Fri, 22 May 2020 01:54:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KrT1SoD15NLfQ8qq9A2L0z3L7OIW2vz0cfwoycZIaSk=;
 b=qjnD8pyzQ9vLSGK+9aXm4h6rt56i4s0ANzW6Vh27qbaJB1MZkwcLIaZitcpOn1XAoT
 O5wzjfLRVQ7eurTzJi/uB64raupxzP+oBMlxnXbiuP4QdlKuhKrnMtylQPMWFigxEvlm
 LIfHwh5uL2pKKcXGUNAkVxR4dxtZDEZIyZ/6H44opVpDR8rrrlBwOJzLs8iNe7g5J0TH
 gg5A5VFwSm+7CGU15o78QgWK5okcvbRKe+6UGIg2/kMi4vEmUS82SVeB3naQ8jmRcvrC
 iIMmvVtr33HdqpOuPv0o4OOS54U1vu4PL+jfQ/ftMRFRFoN9075NHtRNKC0mhg+jIsG4
 r7og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KrT1SoD15NLfQ8qq9A2L0z3L7OIW2vz0cfwoycZIaSk=;
 b=T80/jw2yJ5tlEj20G3zbmaGlb5cKPRtYmiYZUcMrFoznZ1g4gr8KEOYJnlckr779QC
 +r/zL55zMpJbQHNno9EqNBfr3QGSpXn0ooyNdZI2Kr44mFX5uGQ9phx3i23IWnPMcIcn
 hjRhZGEQKcR5rxlpV7yVPdzjVuea5Fu2K2MEEzpLkfYk4mlryjIqS+vQeyRiusGVPWk0
 HvyTEyDCXCOzitTsxQ5JalPT8eAtDwffyIY6vkQEkIjNzfGR297cbGrG9x3B1ePjhaEd
 J2pwb4WLxLZC23Xqs2o/qSyitx2K7HIjrV367pWZDtkeJikgUDUpxB1P9Yil3tKuVNO9
 tl7Q==
X-Gm-Message-State: AOAM5318IRISl9WKnBQcaCTpm7IEbQz1dlVqWcyQNKNX1qpiIuuyVu6P
 2WMrS0wGGYxsiyrACr0JFHOyXqVIHVc+PQqGhE8=
X-Google-Smtp-Source: ABdhPJySNKcXXQ4O+svlbz8UMlrw8yXexA5v6PdsFEo3QaiPpyqed+BtGvQDsL+oQ2C+xIYCZ8vw55AsPQiGlSKaAfE=
X-Received: by 2002:a17:90b:3651:: with SMTP id
 nh17mr3325673pjb.228.1590137647307; 
 Fri, 22 May 2020 01:54:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200522082208.383631-1-alexandru.ardelean@analog.com>
 <20200522082208.383631-5-alexandru.ardelean@analog.com>
In-Reply-To: <20200522082208.383631-5-alexandru.ardelean@analog.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 22 May 2020 11:53:50 +0300
Message-ID: <CAHp75VewoA-jcRDpvNdoRyS4Tdaw_QsBDJ5_ETc6crwuuefdyg@mail.gmail.com>
Subject: Re: [PATCH 5/5] iio: remove left-over parent assignments
To: Alexandru Ardelean <alexandru.ardelean@analog.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_015408_565567_E7761B97 
X-CRM114-Status: UNSURE (   8.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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

On Fri, May 22, 2020 at 11:37 AM Alexandru Ardelean
<alexandru.ardelean@analog.com> wrote:
>
> These were found by doing some shell magic:
> ------------
> for file in $(git grep -w devm_iio_device_alloc | cut -d: -f1 | sort | uniq) ; do
>         if grep 'parent =' $file | grep -v trig | grep -vq devm_; then
>                 echo "$file -> $(grep "parent =" $file)"
>         fi
> done
> -----------

Side note: time to learn coccinelle or shell better :-)

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
