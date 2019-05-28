Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1B12C154
	for <lists+linux-rockchip@lfdr.de>; Tue, 28 May 2019 10:30:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cOfP8PYKRhWgCkhKgrq+kf1dSCmmuRF/fOvhQt9D6Xk=; b=sa6t8mWZtgKKau
	6ZC5nreDRPWeXutq0N5yVFihO1SKhHagXraGX1H4VmNza/5jeU42EQkKAyJG+ImjgpiNhmGqreN/B
	2RZH/e5pWouTAZraNjmzRbBUExfJwKF0K1vKShuTOuFW48V9fNihbh3SaYC0g/vgODfiXwJ++qJi5
	T5JQhG3WrICrDosmbuahglyRlSyqaLjq8F73y8ainq4hfr/WiZwxdC1SozWK7DcpmV3o1VCxyMUZ7
	5Ne1tH+Mm9u+0Gyie3Xd6Yr2ZKjcdLi+KDRXVTQ66IBI7MQzMZg0lPZjEKTLXGOSLUlJF9PFPFRMG
	vLJp1ukwNMhtwP5gPMHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVXUs-00074M-BE; Tue, 28 May 2019 08:30:14 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVXUi-0005op-MM
 for linux-rockchip@lists.infradead.org; Tue, 28 May 2019 08:30:06 +0000
Received: by mail-lj1-x244.google.com with SMTP id w1so16858362ljw.0
 for <linux-rockchip@lists.infradead.org>; Tue, 28 May 2019 01:30:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PMKt4bIgN1HEm/460cE5q68gl3N0MQbJchCnVYWm094=;
 b=kYz0De76bfu7bcWNDUNk28cvkNqBj2DDfPreMRu80+wNclg/Cq4CnbrKsvlyZw+IA7
 4mkUydxfD2Un3cbAhRSfyBoX/ptzp212sf6TWmOnoVmzw5hElpJ/xwBvEz6AuMZva6NF
 xFI5jFTk006v+f8iTbqEtzZisef/yc0VzN1HDMQHuexLTVvjEvw+WSw4oaHzQ1GwXyZP
 B7leIoFy7G91aK8+WgDqlV7Ul/TMeP8u7cjIErXIS/5EvMra0CKyf4nuqkqEf7iO+3Hz
 rYh62p8UD+6LgdQSbmGTNa66vWmZV2k9oSIIxhIecks0VtafIXXxBForI3acUOhb9ZfZ
 w67w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PMKt4bIgN1HEm/460cE5q68gl3N0MQbJchCnVYWm094=;
 b=hAF0eVNBb7Uan0dvFL6FTZBwAJSyjBE65jajY1jw0KUlccQrEdYRF8KMxZZ0VW1lNS
 b6baR1x1SCZmDan9QNt/P/8GwCae9zaSAqoQnK+oHdPkBGS3kXWf9TpNrhIONjHnjFw1
 f63OSvWhpvAIkHhoZbx355fIu22vv8K4oALV0GzIS64/TSE7AZ0SqyMWOen2efto8CuF
 dg2m1lT/qyGepXozqSHwoE7xH7IPSCUDKD0aIxMbWXLU3PapkLf7rxaA2+/Gldv2KrCv
 V76FZMLQitCvhdBUqXbI0BukUASBAtA1bkEY7IevaurP/TvOkymB+yAaSsW/lSgmN/Tk
 BHFg==
X-Gm-Message-State: APjAAAX8lHfmtP+jcR6i/EsxK33rEmZBUeXgwioLoJ0e0NkPQFpVKfO4
 59AX9JV3mxGMtlcWyHeOk9FnIXTGHuQl6ksn27YKeA==
X-Google-Smtp-Source: APXvYqy7veIzZ/Dja/15R5nCc1PW1p8U+rNxKMDmvhoEoTgcYhlfBi3GlLvtP/VxTSoMtFsVccJq+nIFR5XuK6elTvw=
X-Received: by 2002:a2e:1284:: with SMTP id 4mr32732859ljs.138.1559032202173; 
 Tue, 28 May 2019 01:30:02 -0700 (PDT)
MIME-Version: 1.0
References: <5cec74e8.1c69fb81.37335.9d7b@mx.google.com>
 <0edab48f-06e5-9ed8-09be-7c9976ae1afb@collabora.com>
In-Reply-To: <0edab48f-06e5-9ed8-09be-7c9976ae1afb@collabora.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 28 May 2019 10:29:49 +0200
Message-ID: <CACRpkdYN8_ZGd=FiV3nwbjmPPD9x5p=wTZ4SrCj5syLjYW0Ziw@mail.gmail.com>
Subject: Re: linusw/for-next boot bisection: v5.2-rc1-8-g73a790c68d7e on
 rk3288-veyron-jaq
To: Guillaume Tucker <guillaume.tucker@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_013004_743199_CD0F4551 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Linux PM list <linux-pm@vger.kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Elaine Zhang <zhangqing@rock-chips.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Mark Brown <broonie@kernel.org>, Matt Hart <matthew.hart@linaro.org>,
 mgalka@collabora.com, Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Zhang Rui <rui.zhang@intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, May 28, 2019 at 9:13 AM Guillaume Tucker
<guillaume.tucker@collabora.com> wrote:

> This commit has now been reverted in mainline.  Would it be OK
> for you to rebase your for-next branch on v5.2-rc2 or cherry-pick
> the revert to avoid recurring bisections?

Sure I can do that, it's a one-off so why not. I rebased my
devel branch on -rc2.

> Ideally this should have been fixed or reverted in mainline
> before v5.2-rc1 was released, or even earlier when this was first
> found in -next on 13th May.  Unfortunately it was overlooked and
> then spread to other branches like yours.

Usually what we would want for development trees is to ignore
any errors coming from a commit on a release candidate
branch, like -rcN, as it is not directly under our control.

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
