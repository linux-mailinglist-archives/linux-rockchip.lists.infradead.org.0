Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2A5B1CF58D
	for <lists+linux-rockchip@lfdr.de>; Tue, 12 May 2020 15:20:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ijp5fyXW9KmNXkdBpOb/BMZYQVRN3YadrUcNzD0gl7g=; b=c6/0BpWI7iZa8M
	vbPwmsijLS/DfBfYH4LJNJ5hvlij16NVgU6Q6vgNx1gO77a+fRSwH2886UdTJ3hOd/YMMhpW/+dnJ
	MVfGo0HunvR3pHHrzvFXlIVHRJT0b8H7q1q1kiXGquPoQ002LJgj1dTkeIenU32H63WkdhwQ6T6Du
	KxTUtAvv1maaQ9nbWywgGeF5fsXWxgcWWzon8He0h4O6JB9J1Dyn7z+ZyiyoYP+xFWJ9uWsdLznml
	zE0Th0A4dsl3/1ISrrvWaACCEWgJopejgqP0Ua9/6B/eVl1USp0XR5cQNiAcl5FBIYT386Ma1KCBy
	zSzh1hOhumafXulp9whA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYUpK-0005O2-7b; Tue, 12 May 2020 13:20:06 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYUpF-0004dM-PH
 for linux-rockchip@lists.infradead.org; Tue, 12 May 2020 13:20:03 +0000
Received: by mail-lj1-x243.google.com with SMTP id d21so5910062ljg.9
 for <linux-rockchip@lists.infradead.org>; Tue, 12 May 2020 06:20:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UvPU8FSpJL6vomdakXFP0JIBTIocccxNqXkUiwLZfOI=;
 b=sRVBqHUGwXqLACapxJU+IJttWdKv97HrGvlKUNtqaZIYYH9oM2jwMPJXaTLfT3vaGG
 6TEDmnCrrnp6K+HkFTwONKRdxnIdQC20saOW9JGPpfE75qv9QnFGvpRV+91MClVm5fww
 jdHaaheP5FhHpPQnpjhCJONGol7mOW0qWQ+pN1bNFFgbI5FhpvNuFfTTe80h1EcDzLKG
 sSx0XiQzyMRJqyLIkyMMfl4syjZRHOnP0mx0lXx1Iz5rCxnI/7084+tanVGrr775YC5D
 L+D3mK6TggC+X+h3mpe+eNt/X2FLIkCbkaxiw3qtoOAbldLuL0zkXkOsQnlfWp2EySqs
 dU3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UvPU8FSpJL6vomdakXFP0JIBTIocccxNqXkUiwLZfOI=;
 b=QleTDpS8pAHw5hqg0b4TwPXjyaavGWH+w2EIEymTm4V8liwtXBIgUGtCd8t8hHsKGD
 NT4VFmAMqraa+P3Uqx2aPgEP/9gs5i2kARzhENFHqdPP7iPil0S9ZMEboxVW3elUT7QG
 tSN+fLNUYHJYhCklWn1KijA8z5dc63/cWvit6piAXIHcJnpP7lp7FE5KxHgk9ru0mQe8
 3Zl98/5TovtTsse8BJwnNHuDBwZ2YFBy8BzDvk9jgvnJIly08wCrOEM3Hi9IO2xZNCNb
 F5I4UHX1tyiV98CukOTLW4V5PowmD7GrQVuHyAb+nQ2mdrj0UNzOBrDNRWUgZhC71e7b
 5Wiw==
X-Gm-Message-State: AOAM533b1d7qxWeEcUUaq+rzFpk8fWrB37sFODA/tERqTcuOngxPmAfp
 AnxpG8hDrBhBKJ3AoE0F0PGv6pNkMCWECMtCLvpC2A==
X-Google-Smtp-Source: ABdhPJw8wP7XpfU8cUdBtC+cqCuUVz4x1NCpBf8cueselkwXXJLi0jQILeraFJCVVqHvxUUoAKOVK0N5Uuj1VeSbpSE=
X-Received: by 2002:a2e:b609:: with SMTP id r9mr392955ljn.125.1589289599714;
 Tue, 12 May 2020 06:19:59 -0700 (PDT)
MIME-Version: 1.0
References: <20200506101424.15691-1-dafna.hirschfeld@collabora.com>
In-Reply-To: <20200506101424.15691-1-dafna.hirschfeld@collabora.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 12 May 2020 15:19:48 +0200
Message-ID: <CACRpkda0cSqXLb0JaXvFY58rxkgStbCRC2QE9=CB8pMT6vA0GA@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: rockchip: return ENOMEM instead of EINVAL if
 allocation fails
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_062001_861620_2FF8DA5D 
X-CRM114-Status: UNSURE (   7.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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

On Wed, May 6, 2020 at 12:14 PM Dafna Hirschfeld
<dafna.hirschfeld@collabora.com> wrote:

> The function rockchip_pinctrl_parse_dt returns -EINVAL if
> allocation fails. Change the return error to -ENOMEM
>
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Patch applied withe Heiko's review tag, thanks!

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
