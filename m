Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F8B31385C8
	for <lists+linux-rockchip@lfdr.de>; Sun, 12 Jan 2020 11:17:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mYi47ueESWHKnuJi6gxq+3QKz/IJL9nfrtMRDzZ+PLU=; b=VREI9Uf+Fd+423
	6tI5e1zU7jX7j0LxpaDcO0MfsQHZtiXWswzoPf4QabeadMtfmmDzATfZBxCa7gXIWb5QEeDbSv4Y7
	eq0pAr7F6nXBgdGvK+PjAoD7AxVzrp4sOLJxc9yi9HKYLnLm1Bvq/m3yV9Juwe1OEOoJ3gF4DosE+
	ojxkpi99Kl9QezzK+BwvQrHm/OmVG6dwO7uVnyCEHseMqy9q6NLGD151BA/QDGSICleX2IEsuMAM6
	M3WsXrGI61Xx5xJM6MHGo4Do20RFfmCtkcmtJDLw4K7z7BDgljJUg3ao9guQrqEHe8l1Gkgh362Wq
	RARiu4NiqBNCTOKvGjLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqaJ6-0003ck-Pi; Sun, 12 Jan 2020 10:17:20 +0000
Received: from mout.web.de ([212.227.15.14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqaJ3-0003c9-9f
 for linux-rockchip@lists.infradead.org; Sun, 12 Jan 2020 10:17:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1578824230;
 bh=5i96d9WBH6Yxu0PP+hyCQbbIFIlqnaw0r9G2sPEDDhw=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=Z6i8AbYB65Cd9EpS6dkzLU92Yeimce0XscMnPMPLBn13rpoMhu64cxwNMftJqGtll
 Lj9TlWv/O6b5oqmHZOMPqOGoNWhH82SPObQNyLZys8JAOqNjkDsZsJB+WEpqwCYjT5
 dxBs5qtWbRJcauFg1eJazYOimQ4+zFD2PCQqSdh0=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.23] ([89.12.27.144]) by smtp.web.de (mrweb004
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0LbftD-1jVwWj2ODr-00lEAA; Sun, 12
 Jan 2020 11:17:10 +0100
Subject: Re: [PATCH v2 0/5] mfd: RK8xx tidyup
To: Robin Murphy <robin.murphy@arm.com>, lee.jones@linaro.org
References: <cover.1578789410.git.robin.murphy@arm.com>
From: Soeren Moch <smoch@web.de>
Message-ID: <fafe31fa-8a26-6993-2c78-e1cc06ecc05a@web.de>
Date: Sun, 12 Jan 2020 11:17:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <cover.1578789410.git.robin.murphy@arm.com>
Content-Language: en-GB
X-Provags-ID: V03:K1:PlqFJBikMPfIGJPHDPMU3lWulN2oviAdnx+7/MmzajGV0k3IQkh
 CoAn8J87rJmjfGklRZjOfZciV9Iy2koLfmlcvEB151pahokN9/QBja+GAHWpeoJfudHpymx
 r3WUN5NrackIpyDo4CNQ8Dla61rz/2ZJPUtFStFB8wIpqw0AIOBnlNUaucUydS588FLneMn
 DNuwb1fh5fAAdgKlG1YuQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:1Q/z5ypQwFw=:VBZE/RZssMZIOWKI4nrZNh
 I4vEsojy2gAu2fCLj+xW7+HW0jlKwprN90EIQjLoJDFDoPuBr6VUIJuTBjej+9n27E0JeoVbH
 3YuI8CzCjserm0NpvO7pGoqfP5l5gDu4gasHLnR+qvdHQoNu+PV6keDfAMLToo4Gn0xzAqKws
 3Zxna9FqYnvHcNtUoDIj0/IKZWobY0JsPNoHiPl2V9+3k2/+vgxtBNyS0M6whYjHP2enKZIRN
 G3+vdkPYwwSbey8wMGBP7hLVHv4+uchTWR3k39hAPFNCBVemqk+TAI9/I1BuDwk8EAw3GR36u
 4wNM0xNWU96b1fJyPut9IXXJUAToow3K9PZ+455hime9iQCt5SkbwfSvxitm1zgIHledZ7Zvl
 /CciWcxluE/FTZKkhjSyEa0DnO3WKdWx24fwqYuE6bWK7p/ligXcLtqewJg4cKq4dSZKu+Obg
 wTBAmwbWTU0h+vFi3oCakdScw73shye5wOIb+SoSyWcWZsjvPHFOKUQxq0QYJGhvX2ZgbfrhA
 4WKUJiyxuM1sd6PBvb9oCOTPSG11VlJaFUbagkQdpGb1EwYMJVMj6VfPkP7dKVGi5DL1NJSjB
 ZDahO5xqYBAWjotC9fDtx8KxThyFPUfmBoiGLVhnYmTeIJQK1D3KGE5pyyKGg+wJm7DjAIK6o
 Q1kI2uayBQmKkXMOTEWQVUJQBJExFHigcNEbpMgNaaW1aaPGLZBxiEd/pxU3UEhrsTJ2FXwiB
 TJ+R8mo2I34NICONi3bzdy2BIXciEwALd9Mp9OHW4CHz+VLC1oRGQquB6l+RWn+acLf3QRk3a
 sLgAAYSRq1c4v722l6Xi6xzzFeX5SZJcSv6nmmHeCqtpDYl3yiZDaGY9vdyJ7eDJTiItIPgJ6
 I8SXsde3X5R+UDeMppK/GsETwywA/2MMwWhH8IDP5vc3LunzyvsFmYo/b79ZK1NB/4HqOnZ4r
 LI3iVOjad2rOc7/3LcvvJFFRNUWn/Zlh/XpO6V5+VXjWUOA9TMWRe4NenvEyXBdDFleHhtsSZ
 lKKeCze4CK29CLmUm70sDoXNzUMhgMcljNoqRTdRDaYouLdsE6JpCuy196MksEADKhfZvbAD5
 /p58zLnyQCKHusb+pSfMZF6WIlalrc5u/TG/f2AuicgvA/zqTjThhC61L7GCejwWMKO//DIxx
 UXVWsCf2mW0esIlv/z291GU6DRv4D36MD6ZrW0orCiEfpJXGQnkUrAREim/U6BGZIdQGMCGQ/
 o6LrMb4JG6HjEh4kYMCPASpv4YqMHB9m5IU1VuA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_021717_663861_D865F57C 
X-CRM114-Status: UNSURE (   9.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.14 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (smoch[at]web.de)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 heiko@sntech.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 12.01.20 02:54, Robin Murphy wrote:
> Hi all,
>
> Here's a second crack at my RK805-inspired cleanup. There was a bit
> of debate around v1[1], but it seems like we're now all happy that this
> is a reasonable way to go. For clarity I decided to include Soeren's
> patch as #1/5, but since I've rewritten most of my patches I've not
> included the tested-by tags.
I re-tested this series on a RockPro64 board with RK808 PMIC.

Tested-by: Soeren Moch <smoch@web.de>

Regards,
Soeren
>
> Robin.
>
> [1] https://lore.kernel.org/lkml/cover.1575932654.git.robin.murphy@arm.com/
>
> Robin Murphy (4):
>   mfd: rk808: Ensure suspend/resume hooks always work
>   mfd: rk808: Stop using syscore ops
>   mfd: rk808: Reduce shutdown duplication
>   mfd: rk808: Convert RK805 to shutdown/suspend hooks
>
> Soeren Moch (1):
>   mfd: rk808: Always use poweroff when requested
>
>  drivers/mfd/rk808.c       | 139 +++++++++++++-------------------------
>  include/linux/mfd/rk808.h |   2 -
>  2 files changed, 48 insertions(+), 93 deletions(-)
>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
