Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7181C169193
	for <lists+linux-rockchip@lfdr.de>; Sat, 22 Feb 2020 20:42:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GHzOHG/yLSiSVMob0m8ult4OoxGhyaJEnjEIFqhjo7w=; b=qZBelkmjc2MMYh
	t91S9Kv/8KsbxbwLkYGFHYLrJl2fFcQhxZD8Bbc6tCD/dA+Uf15NxICIWLV3IOQi3PeHUmipnuTDS
	CP2UihNaPyfrIvGOnswTlbjzY73EqkZnqDk/BmdcdaEJl6vAvxRka2lyhTxipib6gc0jgFwnTcvSE
	GMDJm0/2PATByGwHp8cA+9dmyGV9UtFDXCpvLAE9PvHiR7qZx/bVo/898WC+JxI6bI7gBQOUJtnaK
	8i2no7J/6nF0QGIkQqW25/kQn51goEb8wb3ax2QE7Em/ppBwhVq8vZKRt/UZ1oFVQl7vZkgvLLgX8
	4/ZS+7Uymvl0mCBhUdmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5afc-0006D2-W0; Sat, 22 Feb 2020 19:42:36 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5afY-0006BU-Li; Sat, 22 Feb 2020 19:42:34 +0000
Received: by mail-ed1-x544.google.com with SMTP id p23so6821816edr.5;
 Sat, 22 Feb 2020 11:42:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jxXwmG/BoLt3/DuSIM90nibgbKIiQUu8A/JCVZrI5aE=;
 b=UMIrgNyD6Xysh3omTsoSt+PHA41YQHPYK5cghpRVeHlz77TJ7VeDmYfWrDvhOmc1qI
 jHj7IHIBLOuwbuN1YbltxeLjSG+oGJTz9lKiXLh0GMtSkLa3f1CwAu3mApEn9rY6zIWW
 qnsZoJPouP5O0tOJ2Fg/kJvcf+p4ecUGrx6pfZfPCXo+4iInjRvgm14RUbXu0l9Elg0w
 EN2Xi+CKWIITk0Rucsz09925+BtHNYF+NBKK8MSOemJ6EYCxNgqaNmXop5RgFYxkjfd9
 I4IW9qJwpAxIZ8H6bp14M8B4losIzyNOG2OR4lniKVyn+PmOQhWAYji3fViIQWDlM1iY
 MG9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jxXwmG/BoLt3/DuSIM90nibgbKIiQUu8A/JCVZrI5aE=;
 b=pyNDvZYwO4T3U3Y8C+ttqJrZGPVRTAc6VQymHO1iJ0qmBDigpQSiiaLeyPoE/hBjHL
 QlZ9aF++CDzYC/8JcEdgI67mrNQhMvDCm/vWxJlLgPH4n6HCuA6jobDGWLP/6C311vV8
 C4vZlWFwVmcf+mdiC1Aq7CV9f1Mcl2w9byjhwGlE8e3DkxPA9CK0Wg1Ho3ptJCTNSXo5
 6pXyP2NleVNCr+dGWauyoQrcG0wNdWcYAT+pCpkZaEYqLIUcJEu9vrqFpg8/H6FXAICT
 InPljSgQTdbLVxL/zOuzCgzu8SJAdYQELNvl1WVBOISY85pVvmW2vzhMMFXkpbuOQKGq
 8Phg==
X-Gm-Message-State: APjAAAWx3vNJv2LpLh121EAA6IMnp6wpl3wxMF7KRh95PKsA+y8Hjy1m
 ZmYxXGZ79IRCRyNyNR9Ey766o+CCw3TwcVDFAEs=
X-Google-Smtp-Source: APXvYqwfAkL5gcMkA/17+706cDRZPOl9loVVEPtWeFZTvqzB7twy3wihTpHS8mLjeiRkAbjzkyTYXKADIgMaiqwtzIM=
X-Received: by 2002:a05:6402:b2e:: with SMTP id
 bo14mr41025601edb.13.1582400551407; 
 Sat, 22 Feb 2020 11:42:31 -0800 (PST)
MIME-Version: 1.0
References: <20200112001623.2121227-1-martin.blumenstingl@googlemail.com>
In-Reply-To: <20200112001623.2121227-1-martin.blumenstingl@googlemail.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sat, 22 Feb 2020 20:42:20 +0100
Message-ID: <CAFBinCBLJyPxOBv0JNe7o0ME3rvPi+2Qv7Lwgw6T92f15ZXcxA@mail.gmail.com>
Subject: Re: [PATCH RFT v2 0/3] devfreq fixes for panfrost
To: steven.price@arm.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_114232_739180_5FEF980C 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: robh@kernel.org, tomeu.vizoso@collabora.com, airlied@linux.ie,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, daniel@ffwll.ch, sudeep.holla@arm.com,
 linux-amlogic@lists.infradead.org, robin.murphy@arm.com, alyssa@rosenzweig.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Steven,

On Sun, Jan 12, 2020 at 1:16 AM Martin Blumenstingl
<martin.blumenstingl@googlemail.com> wrote:
>
> These are a bunch of devfreq fixes for panfrost that came up in a
> discussion with Robin Murphy during the code-review of the lima
> devfreq patches: [0]
>
> I am only able to test patch #1 properly because the only boards with
> panfrost GPU that I have are using an Amlogic SoC. We don't have
> support for the OPP tables or dynamic clock changes there yet.
> So patches #2 and #3 are compile-tested only.
>
>
> Changes since v1 at [1]
> - added Steven's Reviewed-by to patch #2 (thank you!)
> - only use dev_pm_opp_put_regulators() to clean up in
>   panfrost_devfreq_init() if regulators_opp_table is not NULL to fix
>   a potential crash inside dev_pm_opp_put_regulators() as spotted by
>   Steven Price (thank you!). While here, I also switched to "goto err"
>   pattern to avoid lines with more than 80 characters.
>
> Known discussion topics (I have no way to test either of these, so I am
> looking for help here):
> - Steven Price reported the following message on his firefly (RK3288)
>   board:
>   "debugfs: Directory 'ffa30000.gpu-mali' with parent 'vdd_gpu' already
>   present!"
> - Robin Murphy suggested that patch #1 may not work once the OPP table
>   for the GPU comes from SCMI
>
>
> [0] https://patchwork.freedesktop.org/patch/346898/
> [1] https://patchwork.freedesktop.org/series/71744/
>
>
> Martin Blumenstingl (3):
>   drm/panfrost: enable devfreq based the "operating-points-v2" property
>   drm/panfrost: call dev_pm_opp_of_remove_table() in all error-paths
>   drm/panfrost: Use the mali-supply regulator for control again
I don't have time to work on these patches in the near future
can you (or if someone else is interested then please speak up) please
take these over? you are familiar with the panfrost devfreq code and
you have at least one board where the GPU regulator actually has to
change the voltage (which means you can test this properly; on Amlogic
SoCs the GPU voltage is fixed across all frequencies).


Martin

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
