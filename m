Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70CC1121FC9
	for <lists+linux-rockchip@lfdr.de>; Tue, 17 Dec 2019 01:32:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i9Jz9JL+ZeG+9rCegblMDja9HstKj0cly6sgph8W7eU=; b=OITvwD/qRNSKhD
	b4sUg7nUwh4d0ILl38XCbSEDXPcZ8jJFlbJYD7S1nG+dkDO3NHn/Qbn8dj5Z1Ebl9VgchHIwUuTbW
	D/07NSDXSk/cY2/ZcZXtYWAowL4+ktTwJLdJzU9sSsinRiQmVGRx8YKVwEI3sAD5v8clgu5k07Qxc
	vcEYJz0/RRNbYjuaJrHOHdqWlaMnSblrjIQGBDB5mtWAlZEioa6InIlcxz2yXcYbIkQaeZfY7cvSp
	dObbiqI2WQiEg9/co39s+/9pa6Oo4Ez9EN1hX3Cnk+8KQG0GezgXXteBia50pDFGxpSk1143idB0a
	6w8RlOCGBkKk7V9odoVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih0mN-0001UC-Jz; Tue, 17 Dec 2019 00:31:59 +0000
Received: from mout.web.de ([212.227.17.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih0mJ-0001TF-Tm
 for linux-rockchip@lists.infradead.org; Tue, 17 Dec 2019 00:31:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1576542706;
 bh=VAIarekXGaF7LbwrHuNiLBdwDHGgah+wk5zWVi3fUw0=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=jOY+v5TSrp1jXA2PfIum+7Y7i4dl4sYqiS9SAu7ia9a0oIexHZzxTr2WHOED/mSsC
 rlvTH7gh6ukNBh6NxYuR2QYG+G+BdyZ7hR8p66ZqXBCMByZN0x3EWd7YtymwbHnOKs
 sUUC8Cxp3RXlW2Ovp0TCg4O1U+jIdX93E8plQp7A=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.43.108] ([89.204.137.13]) by smtp.web.de (mrweb101
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0M5wrF-1hk7Wl1RUn-00xuY3; Tue, 17
 Dec 2019 01:31:46 +0100
Subject: Re: [PATCH 0/4] mfd: RK8xx tidyup
To: Robin Murphy <robin.murphy@arm.com>, lee.jones@linaro.org
References: <cover.1575932654.git.robin.murphy@arm.com>
From: Soeren Moch <smoch@web.de>
Message-ID: <a7f8f6da-4913-910b-bcf0-e7c39a251c61@web.de>
Date: Tue, 17 Dec 2019 01:31:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <cover.1575932654.git.robin.murphy@arm.com>
Content-Language: en-GB
X-Provags-ID: V03:K1:8QdblLwHK9OyDD7ibW1J/hpvHe3mNoLqarHlddxZXSju1eo3iK3
 2/EgJ/aB+kMYT1B/Hq6IqocaGNya1ZJeQM1ZissE/BKMsDqIEAH69xKItTg2K+TCAyg5+Df
 fHIhfL130zLNgoPEjIEUKZpJthbUt99Zp0tZ9d1rfYKAJrSZk7l/RS/lw/LhXOyD7Lat5pb
 omukZRrssExn+vhKBo/YA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:pu7hEOyfe0k=:vfoheoKlKDogR3GLB+PI0D
 twUpyEUcpYIkSexlVxfVWroW7+VSoGx93k2lzLmgNdM4wENevzeE+nTdnw2PDvgLaER0S8Zs9
 MpiAg89YLdN4fVNCJVDNzOP5oSeXrXD16U6cnzmXtat1ssOt8u+jHtMPe/F3txkhiv64L8kdh
 41NvgV1XOM77xpDC8wgL4dgTC2EoDJk6oFxHScdoVa5wk4HCpvgT7IgGOFYvRVKe6ZrgYWo0C
 j0hXJBQm9Ohyio/JTD+XqdKHo7089212UX+YRoizB4JP2I+hAhuMd25iq9krcb1H6Xbp2mOWC
 xEBoEWEY0k1oXuVDbJ6EaEtS81d4KPIBW8D2+UE7nm75WQTZEqnI1xKIvl/e/KDZAOtkUu44K
 PTL8umstUqKfaUAt3sspKeEwdw2V5MI5cAxAA0/DD9rnrOpgU1hDNl75eHH23pDGJFchtW/mm
 u9ezfMNO0+fQh7ac7SkcVUlHrzOpBfiibbdlImlvauz0xHHPywmH01VelAlCNah53EqtePEg5
 YYaVjdnplwhpTgjkxtJ2w9cKfeARC2A3stqDR+YYjvHiRv7aairIqzsZswHOKIYSA7uQPb7Sp
 z83Pc++aE8aLmRt0iirV/F4uJQflTJzhK/+l/2poTtWi/GI69TOa+VztvWVNuyIRp8Lt1KVgG
 Y2vBuSY4zOkftpjKT6guWlm5ZW4MxEVKQGNB0CbF7AXpwcMWMs3Ic4IUlW3OsZpuSjzjCt/Yl
 B5R3fS4ugZd47iKwH1O3mIZnB8R4ZrFa0s//d9jlgvGoPfge5sPze21IX8t0iDq0WZ0IV0hYi
 p23MlOTwFBN0mQIqsDkPdzr7zfcDPszFC1zj1LdrGmnGIeZ37MXyihTbETdpGdbC2/PdmddV6
 nk/X7pbdNcps9ne+S0zih3AnO7brHblBLVCUd0YpFpd7JCA1s0mYYxes0C7403JQvBRkDdNoB
 iH4db01Qox3jMiY9nJR/6AgzqUd5c6nfS4JG2kEkl96zcHFKt2wihEAN3k+9mn1QpFUvPSG40
 S4ozi7JQ1kQ2JmZjAg2ZTT9AZMc0CJCCA0PWqFDUptEgDEi2icD3SXuZ3OpRkNVLPf2lj2i/e
 2usYX7zTYljrCHtoTNW/xDbfcKpk+23QPiRd01ig8P7YSSPYWoTCJXmL2LwPZZZNYXFF9dtYB
 dMwHBbV2ehiU1mZ5khuAGxS7v7aAnxNjkdMU4OgWijqu4EMxep7xDYpkQJNMORu8ueLbvLjCB
 ywDN7A1QGsUZFADhTOzfr5bd4F4pX27qci1HhPw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_163156_368902_79A94D27 
X-CRM114-Status: GOOD (  11.83  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.12 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (smoch[at]web.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.227.17.12 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux.amoon@gmail.com, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, heiko@sntech.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 10.12.19 14:24, Robin Murphy wrote:
> Hi all,
>
> In trying to debug suspend issues on my RK3328 box, I was looking at
> how the RK8xx driver handles the RK805 sleep pin, and frankly the whole
> driver seemed untidy enough to warrant some cleanup and minor fixes
> before going any further. I've based the series on top of Soeren's
> "mfd: rk808: Always use poweroff when requested" patch[1].
>
> Note that I've only had time to build-test these patches so far, but I
> wanted to share them early for the sake of discussion in response to
> the other thread[2].
>
> Robin.
>
> [1] https://patchwork.kernel.org/patch/11279249/
> [2] https://patchwork.kernel.org/cover/11276945/
>
> Robin Murphy (4):
>   mfd: rk808: Set global instance unconditionally
>   mfd: rk808: Always register syscore ops
>   mfd: rk808: Reduce shutdown duplication
>   mfd: rk808: Convert RK805 to syscore/PM ops
>
>  drivers/mfd/rk808.c       | 122 ++++++++++++++++----------------------
>  include/linux/mfd/rk808.h |   2 -
>  2 files changed, 50 insertions(+), 74 deletions(-)
>
The whole series, on top of [1]:
Tested on RockPro64 board with RK808 PMIC.

Tested-by: Soeren Moch <smoch@web.de>

Regards,
Soeren

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
