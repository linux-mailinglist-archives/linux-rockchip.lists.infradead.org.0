Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 969511CFC96
	for <lists+linux-rockchip@lfdr.de>; Tue, 12 May 2020 19:47:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f6PTCMRSaf0uD6LtHCP0cETcr5BBMU7NGmTOkNyJJs8=; b=tyZS2uhYo/xr4R
	Fv1YapP6mmTDZ04jy0hIKmW1Uaw0sAEiX924JDewzJmuUIiGTe2PCqNVyKjQeSqE+RK2a4Wr05t15
	GDEYy44E/T2jEh2B+foBMPBxbyburLGIBClYSMd0pZuhbmQSF4B+5yulhhcZxgEPiNPz+gY1fVLk7
	+vhWcOyS/yKjzEGl6H7Owr3FDvK3LgnShiGLSuD0Cp2IL0b1HZyAW6NPO+A06aza0z7IinS1/nQhL
	mR2nX/l8g1UQQhqHddFU8WIoFojb5zikNr5SjSiCtl/G5VCSJjAD9cAbYl4nTY01fhoH1OB0S01P0
	StC6hXfzzSzkZANaHFtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYZ08-0006wc-VN; Tue, 12 May 2020 17:47:32 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYYz4-000645-JV
 for linux-rockchip@lists.infradead.org; Tue, 12 May 2020 17:46:28 +0000
Received: by mail-lf1-x144.google.com with SMTP id u4so11294306lfm.7
 for <linux-rockchip@lists.infradead.org>; Tue, 12 May 2020 10:46:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ES33Ff/hX9Lt7ZdWNFhLgXbSOeoiO7TlTuuemLOLyZE=;
 b=G1lTNsXayueOOgZODxtiixitMWMAt+sxOQROXajaPEa3506KQWhca7dS3ckLE80uJ0
 5tv4hEWPNB2qquqnlxCpG29ECGWb9pkioi7+cmFVAEorXNRSA8eGGcvaNsKP1UEq/TjR
 WhYlTjvMBqoV1UF+LMz+DAXwGnfkizpEQ/sXSPXaenKTL6b6EJewzI7z6eS0tZ2qHXs1
 DC77oF6aVjFp7Y12phf9605AKVHRU+xhgDf6pIAidV35qg4wjY5ZKbkO1OVBJfRRpfPy
 s0vCtqVy8MF/McSvXVmrZh3PrBo8fa9st6FgwShWrf2NwmF4eMtqijC2ECUmMTTqZgNw
 +HSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ES33Ff/hX9Lt7ZdWNFhLgXbSOeoiO7TlTuuemLOLyZE=;
 b=qVmSr7m9da0fMIKBvot2mZWiVQMLPugTrcnTclH2QQwnEAZr8XqPaC1TPALt2HZWzp
 uyvgied59gguISw7MCXqVKzvNyg15Qr25esatus76ld4kKE6VQ6dYhf+4Vh4zP7c2iKk
 ci0KTWgwVV5VAGuWgo+dRGQuUunKTzFrkA5ULh2uZrFxyNzuz5Pe5iKbVndp1UWXTGcC
 eqTSw+e2GognmDLtbFln8cy2RjOi2wDSdxfi6y3m1tZ0bgrVazT0mm3GAkw76ZRXmHno
 /R/VRouVVTSOy+p6H8ndJd2IGhVEj2dZm35E29eSrUX/p2nmYkxgX7f8xmgqlVVaxp6Z
 GvCg==
X-Gm-Message-State: AOAM533TABzXt8hHyVZ8ZkSM6u3QEs37Fx67tLm16Zx9K8Hn5/M0D/u0
 3st9My8ZC1/cQXMFCzWZ7xO/hwtKkEek/kmIxqCuHg==
X-Google-Smtp-Source: ABdhPJxXirLllM+MHpLQOCLbGmzUdj2o3E13tCmeTCphn+zn945vIqHpGCJygj9ebntSTSBCtW7KVu8W2be0SK6V4qE=
X-Received: by 2002:ac2:414c:: with SMTP id c12mr15075075lfi.47.1589305584834; 
 Tue, 12 May 2020 10:46:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200506100903.15420-1-dafna.hirschfeld@collabora.com>
In-Reply-To: <20200506100903.15420-1-dafna.hirschfeld@collabora.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 12 May 2020 19:46:13 +0200
Message-ID: <CACRpkdZ7QSNfMSm1NEFC9zbH8tkOieoPr39Fx3kzxgmER1cqAw@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: rockchip: fix memleak in rockchip_dt_node_to_map
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_104626_659864_DA315145 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 dafna3@gmail.com, "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 helen.koike@collabora.com, kernel@collabora.com, ezequiel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, May 6, 2020 at 12:09 PM Dafna Hirschfeld
<dafna.hirschfeld@collabora.com> wrote:

> In function rockchip_dt_node_to_map, a new_map variable is
> allocated by:
>
> new_map = devm_kcalloc(pctldev->dev, map_num, sizeof(*new_map),
>                        GFP_KERNEL);
>
> This uses devres and attaches new_map to the pinctrl driver.
> This cause a leak since new_map is not released when the probed
> driver is removed. Fix it by using kcalloc to allocate new_map
> and free it in `rockchip_dt_free_map`
>
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Patch applied.

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
